import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/entities/user_entity.dart';
import 'package:examy/feature/auth/domain/use_cases/login_use_case.dart';
import 'package:examy/feature/auth/presentation/login/cubit/login_cubit.dart';
import 'package:examy/feature/auth/presentation/login/cubit/login_event.dart';
import 'package:examy/feature/auth/presentation/login/cubit/login_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_cubit_test.mocks.dart';

@GenerateMocks([LoginUseCase])
void main() {
  late MockLoginUseCase mockLoginUseCase;
  late LoginCubit loginCubit;

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();

    loginCubit = LoginCubit(mockLoginUseCase);
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

  provideDummy<BaseResponse<AuthResponseEntity>>(dummySuccessResponse);

  group('Login', () {
    test('should log in successfully', () async {
      // Arrange
      when(
        mockLoginUseCase(
          email: anyNamed('email'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        loginCubit.stream,
        emitsInOrder([
          isA<LoginState>().having(
            (state) => state.loginState?.isLoading,
            'isLoading',
            true,
          ),
          isA<LoginState>()
              .having(
                (state) => state.loginState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.loginState?.data,
                'data',
                dummyAuth,
              )
              .having(
                (state) => state.loginState?.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      loginCubit.onEvent(
        const LoginEvent.submitted(
          email: 'john@test.com',
          password: 'password123',
        ),
      );

      // Assert
      await future;

      verify(
        mockLoginUseCase(email: 'john@test.com', password: 'password123'),
      ).called(1);
    });

    test('should return error when login fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<AuthResponseEntity>(
        errorMessage: 'login failed',
      );

      when(
        mockLoginUseCase(
          email: anyNamed('email'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        loginCubit.stream,
        emitsInOrder([
          isA<LoginState>().having(
            (state) => state.loginState?.isLoading,
            'isLoading',
            true,
          ),
          isA<LoginState>()
              .having(
                (state) => state.loginState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.loginState?.errorMessage,
                'errorMessage',
                'login failed',
              ),
        ]),
      );

      // Act
      loginCubit.onEvent(
        const LoginEvent.submitted(
          email: 'john@test.com',
          password: 'password123',
        ),
      );

      // Assert
      await future;

      verify(
        mockLoginUseCase(email: 'john@test.com', password: 'password123'),
      ).called(1);
    });
  });
}
