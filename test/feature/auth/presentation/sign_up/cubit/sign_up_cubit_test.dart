import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';
import 'package:examy/feature/auth/domain/entities/user_entity.dart';
import 'package:examy/feature/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:examy/feature/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:examy/feature/auth/presentation/sign_up/cubit/sign_up_event.dart';
import 'package:examy/feature/auth/presentation/sign_up/cubit/sign_up_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_cubit_test.mocks.dart';

@GenerateMocks([SignUpUseCase])
void main() {
  late MockSignUpUseCase mockSignUpUseCase;
  late SignUpCubit signUpCubit;

  setUp(() {
    mockSignUpUseCase = MockSignUpUseCase();

    signUpCubit = SignUpCubit(mockSignUpUseCase);
  });

  final dummyAuth = AuthResponseEntity(
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
  );

  final dummySuccessResponse = SuccessResponse<AuthResponseEntity>(dummyAuth);

  const signUpEntity = SignUpEntity(
    username: 'johndoe',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@test.com',
    password: 'password123',
    rePassword: 'password123',
    phone: '01000000000',
  );

  provideDummy<BaseResponse<AuthResponseEntity>>(dummySuccessResponse);

  group('SignUp', () {
    test('should sign up successfully', () async {
      // Arrange
      when(
        mockSignUpUseCase(signUpEntity: anyNamed('signUpEntity')),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        signUpCubit.stream,
        emitsInOrder([
          isA<SignUpState>().having(
            (state) => state.signUpState?.isLoading,
            'isLoading',
            true,
          ),
          isA<SignUpState>()
              .having(
                (state) => state.signUpState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.signUpState?.data,
                'data',
                dummyAuth,
              )
              .having(
                (state) => state.signUpState?.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      signUpCubit.onEvent(
        const SignUpEvent.submitted(signUpEntity: signUpEntity),
      );

      // Assert
      await future;

      verify(mockSignUpUseCase(signUpEntity: signUpEntity)).called(1);
    });

    test('should return error when sign up fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<AuthResponseEntity>(
        errorMessage: 'signup failed',
      );

      when(
        mockSignUpUseCase(signUpEntity: anyNamed('signUpEntity')),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        signUpCubit.stream,
        emitsInOrder([
          isA<SignUpState>().having(
            (state) => state.signUpState?.isLoading,
            'isLoading',
            true,
          ),
          isA<SignUpState>()
              .having(
                (state) => state.signUpState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.signUpState?.errorMessage,
                'errorMessage',
                'signup failed',
              ),
        ]),
      );

      // Act
      signUpCubit.onEvent(
        const SignUpEvent.submitted(signUpEntity: signUpEntity),
      );

      // Assert
      await future;

      verify(mockSignUpUseCase(signUpEntity: signUpEntity)).called(1);
    });
  });
}
