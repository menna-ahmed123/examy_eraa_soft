import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';
import 'package:examy/feature/auth/domain/entities/user_entity.dart';
import 'package:examy/feature/auth/domain/repos/auth_repo.dart';
import 'package:examy/feature/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_use_case_test.mocks.dart';

@GenerateMocks([AuthRepo])
void main() {
  late MockAuthRepo mockAuthRepo;
  late SignUpUseCase signUpUseCase;

  final dummyResponse = SuccessResponse(
    AuthResponseEntity(
      message: 'ok',
      token: 'token123',
      user: UserEntity(
        id: 'id1',
        username: 'johndoe',
        firstName: 'John',
        lastName: 'Doe',
        email: 'john@test.com',
        phone: '01000000000',
        role: 'Student',
        isVerified: true,
      ),
    ),
  );

  provideDummy<BaseResponse<AuthResponseEntity>>(dummyResponse);

  setUp(() {
    mockAuthRepo = MockAuthRepo();
    signUpUseCase = SignUpUseCase(mockAuthRepo);
  });

  group('SignUpUseCase', () {
    test(
      'should return success response when repository signs up successfully',
      () async {
        // Arrange
        const signUpEntity = SignUpEntity(
          username: 'johndoe',
          firstName: 'John',
          lastName: 'Doe',
          email: 'john@test.com',
          password: 'password123',
          rePassword: 'password123',
          phone: '01000000000',
        );

        when(
          mockAuthRepo.signUp(signUpEntity: anyNamed('signUpEntity')),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await signUpUseCase(signUpEntity: signUpEntity);

        // Assert
        expect(result, isA<SuccessResponse<AuthResponseEntity>>());
        final successResponse = result as SuccessResponse<AuthResponseEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails to sign up',
      () async {
        // Arrange
        const signUpEntity = SignUpEntity(
          username: 'johndoe',
          firstName: 'John',
          lastName: 'Doe',
          email: 'john@test.com',
          password: 'password123',
          rePassword: 'password123',
          phone: '01000000000',
        );

        final dummyErrorResponse = ErrorResponse<AuthResponseEntity>(
          errorMessage: 'signup failed',
        );

        when(
          mockAuthRepo.signUp(signUpEntity: anyNamed('signUpEntity')),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await signUpUseCase(signUpEntity: signUpEntity);

        // Assert
        expect(result, isA<ErrorResponse<AuthResponseEntity>>());
      },
    );
  });
}
