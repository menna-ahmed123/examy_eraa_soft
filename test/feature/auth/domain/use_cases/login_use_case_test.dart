import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/entities/user_entity.dart';
import 'package:examy/feature/auth/domain/repos/auth_repo.dart';
import 'package:examy/feature/auth/domain/use_cases/login_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_use_case_test.mocks.dart';

@GenerateMocks([AuthRepo])
void main() {
  late MockAuthRepo mockAuthRepo;
  late LoginUseCase loginUseCase;

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
    loginUseCase = LoginUseCase(mockAuthRepo);
  });

  group('LoginUseCase', () {
    test(
      'should return success response when repository logs in successfully',
      () async {
        // Arrange
        when(
          mockAuthRepo.login(
            email: anyNamed('email'),
            password: anyNamed('password'),
          ),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await loginUseCase(
          email: 'john@test.com',
          password: 'password123',
        );

        // Assert
        expect(result, isA<SuccessResponse<AuthResponseEntity>>());
        final successResponse = result as SuccessResponse<AuthResponseEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails to log in',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<AuthResponseEntity>(
          errorMessage: 'login failed',
        );

        when(
          mockAuthRepo.login(
            email: anyNamed('email'),
            password: anyNamed('password'),
          ),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await loginUseCase(
          email: 'john@test.com',
          password: 'password123',
        );

        // Assert
        expect(result, isA<ErrorResponse<AuthResponseEntity>>());
      },
    );
  });
}
