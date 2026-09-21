import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/forgot_password_use_case.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/verify_reset_code_use_case.dart';
import 'package:examy/feature/forgot_password/presentation/email_verification/cubit/email_verification_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/email_verification/cubit/email_verification_event.dart';
import 'package:examy/feature/forgot_password/presentation/email_verification/cubit/email_verification_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'email_verification_cubit_test.mocks.dart';

@GenerateMocks([VerifyResetCodeUseCase, ForgotPasswordUseCase])
void main() {
  late MockVerifyResetCodeUseCase mockVerifyResetCodeUseCase;
  late MockForgotPasswordUseCase mockForgotPasswordUseCase;
  late EmailVerificationCubit emailVerificationCubit;

  setUp(() {
    mockVerifyResetCodeUseCase = MockVerifyResetCodeUseCase();
    mockForgotPasswordUseCase = MockForgotPasswordUseCase();

    emailVerificationCubit = EmailVerificationCubit(
      mockVerifyResetCodeUseCase,
      mockForgotPasswordUseCase,
    );
  });

  const dummyMessage = MessageEntity(message: 'ok');

  final dummySuccessResponse = SuccessResponse<MessageEntity>(dummyMessage);

  provideDummy<BaseResponse<MessageEntity>>(dummySuccessResponse);

  group('VerifyResetCode', () {
    test('should verify reset code successfully', () async {
      // Arrange
      when(
        mockVerifyResetCodeUseCase(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        emailVerificationCubit.stream,
        emitsInOrder([
          isA<EmailVerificationState>().having(
            (state) => state.emailVerificationState?.isLoading,
            'isLoading',
            true,
          ),
          isA<EmailVerificationState>()
              .having(
                (state) => state.emailVerificationState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.emailVerificationState?.data,
                'data',
                dummyMessage,
              ),
        ]),
      );

      // Act
      emailVerificationCubit.onEvent(
        const EmailVerificationEvent.verifySubmitted(resetCode: '123456'),
      );

      // Assert
      await future;

      verify(
        mockVerifyResetCodeUseCase(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).called(1);
    });

    test('should return error when verify reset code fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<MessageEntity>(
        errorMessage: 'verify failed',
      );

      when(
        mockVerifyResetCodeUseCase(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        emailVerificationCubit.stream,
        emitsInOrder([
          isA<EmailVerificationState>().having(
            (state) => state.emailVerificationState?.isLoading,
            'isLoading',
            true,
          ),
          isA<EmailVerificationState>()
              .having(
                (state) => state.emailVerificationState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.emailVerificationState?.errorMessage,
                'errorMessage',
                'verify failed',
              ),
        ]),
      );

      // Act
      emailVerificationCubit.onEvent(
        const EmailVerificationEvent.verifySubmitted(resetCode: '123456'),
      );

      // Assert
      await future;

      verify(
        mockVerifyResetCodeUseCase(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).called(1);
    });
  });

  group('ResendCode', () {
    test('should resend code successfully', () async {
      // Arrange
      when(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        emailVerificationCubit.stream,
        emitsInOrder([
          isA<EmailVerificationState>().having(
            (state) => state.resendCodeState?.isLoading,
            'isLoading',
            true,
          ),
          isA<EmailVerificationState>()
              .having(
                (state) => state.resendCodeState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.resendCodeState?.data,
                'data',
                dummyMessage,
              ),
        ]),
      );

      // Act
      emailVerificationCubit.onEvent(
        const EmailVerificationEvent.resendRequested(
          email: 'john@test.com',
        ),
      );

      // Assert
      await future;

      verify(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).called(1);
    });

    test('should return error when resend code fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<MessageEntity>(
        errorMessage: 'resend failed',
      );

      when(
        mockForgotPasswordUseCase(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        emailVerificationCubit.stream,
        emitsInOrder([
          isA<EmailVerificationState>().having(
            (state) => state.resendCodeState?.isLoading,
            'isLoading',
            true,
          ),
          isA<EmailVerificationState>()
              .having(
                (state) => state.resendCodeState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.resendCodeState?.errorMessage,
                'errorMessage',
                'resend failed',
              ),
        ]),
      );

      // Act
      emailVerificationCubit.onEvent(
        const EmailVerificationEvent.resendRequested(
          email: 'john@test.com',
        ),
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
