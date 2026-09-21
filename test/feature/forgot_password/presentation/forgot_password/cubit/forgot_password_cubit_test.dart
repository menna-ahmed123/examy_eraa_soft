import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/forgot_password_use_case.dart';
import 'package:examy/feature/forgot_password/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/forgot_password/cubit/forgot_password_event.dart';
import 'package:examy/feature/forgot_password/presentation/forgot_password/cubit/forgot_password_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'forgot_password_cubit_test.mocks.dart';

@GenerateMocks([ForgotPasswordUseCase])
void main() {
  late MockForgotPasswordUseCase mockForgotPasswordUseCase;
  late ForgotPasswordCubit forgotPasswordCubit;

  setUp(() {
    mockForgotPasswordUseCase = MockForgotPasswordUseCase();

    forgotPasswordCubit = ForgotPasswordCubit(mockForgotPasswordUseCase);
  });

  const dummyMessage = MessageEntity(message: 'ok');

  final dummySuccessResponse = SuccessResponse<MessageEntity>(dummyMessage);

  provideDummy<BaseResponse<MessageEntity>>(dummySuccessResponse);

  group('ForgotPassword', () {
    test('should send reset code successfully', () async {
      // Arrange
      when(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        forgotPasswordCubit.stream,
        emitsInOrder([
          isA<ForgotPasswordState>().having(
            (state) => state.forgotPasswordState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ForgotPasswordState>()
              .having(
                (state) => state.forgotPasswordState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.forgotPasswordState?.data,
                'data',
                dummyMessage,
              ),
        ]),
      );

      // Act
      forgotPasswordCubit.onEvent(
        const ForgotPasswordEvent.submitted(email: 'john@test.com'),
      );

      // Assert
      await future;

      verify(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).called(1);
    });

    test('should return error when sending reset code fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<MessageEntity>(
        errorMessage: 'forgot password failed',
      );

      when(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        forgotPasswordCubit.stream,
        emitsInOrder([
          isA<ForgotPasswordState>().having(
            (state) => state.forgotPasswordState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ForgotPasswordState>()
              .having(
                (state) => state.forgotPasswordState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.forgotPasswordState?.errorMessage,
                'errorMessage',
                'forgot password failed',
              ),
        ]),
      );

      // Act
      forgotPasswordCubit.onEvent(
        const ForgotPasswordEvent.submitted(email: 'john@test.com'),
      );

      // Assert
      await future;

      verify(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).called(1);
    });
  });
}
