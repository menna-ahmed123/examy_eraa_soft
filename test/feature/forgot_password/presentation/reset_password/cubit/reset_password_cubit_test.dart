import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/reset_password_use_case.dart';
import 'package:examy/feature/forgot_password/presentation/reset_password/cubit/reset_password_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/reset_password/cubit/reset_password_event.dart';
import 'package:examy/feature/forgot_password/presentation/reset_password/cubit/reset_password_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'reset_password_cubit_test.mocks.dart';

@GenerateMocks([ResetPasswordUseCase])
void main() {
  late MockResetPasswordUseCase mockResetPasswordUseCase;
  late ResetPasswordCubit resetPasswordCubit;

  setUp(() {
    mockResetPasswordUseCase = MockResetPasswordUseCase();

    resetPasswordCubit = ResetPasswordCubit(mockResetPasswordUseCase);
  });

  const dummyMessage = MessageEntity(message: 'ok');

  final dummySuccessResponse = SuccessResponse<MessageEntity>(dummyMessage);

  provideDummy<BaseResponse<MessageEntity>>(dummySuccessResponse);

  group('ResetPassword', () {
    test('should reset password successfully', () async {
      // Arrange
      when(
        mockResetPasswordUseCase(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        resetPasswordCubit.stream,
        emitsInOrder([
          isA<ResetPasswordState>().having(
            (state) => state.resetPasswordState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ResetPasswordState>()
              .having(
                (state) => state.resetPasswordState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.resetPasswordState?.data,
                'data',
                dummyMessage,
              ),
        ]),
      );

      // Act
      resetPasswordCubit.onEvent(
        const ResetPasswordEvent.submitted(
          email: 'john@test.com',
          newPassword: 'new123456',
        ),
      );

      // Assert
      await future;

      verify(
        mockResetPasswordUseCase(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).called(1);
    });

    test('should return error when reset password fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<MessageEntity>(
        errorMessage: 'reset failed',
      );

      when(
        mockResetPasswordUseCase(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        resetPasswordCubit.stream,
        emitsInOrder([
          isA<ResetPasswordState>().having(
            (state) => state.resetPasswordState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ResetPasswordState>()
              .having(
                (state) => state.resetPasswordState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.resetPasswordState?.errorMessage,
                'errorMessage',
                'reset failed',
              ),
        ]),
      );

      // Act
      resetPasswordCubit.onEvent(
        const ResetPasswordEvent.submitted(
          email: 'john@test.com',
          newPassword: 'new123456',
        ),
      );

      // Assert
      await future;

      verify(
        mockResetPasswordUseCase(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).called(1);
    });
  });
}
