import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/reset_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/repos/forgot_password_repo.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/reset_password_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'reset_password_use_case_test.mocks.dart';

@GenerateMocks([ForgotPasswordRepo])
void main() {
  late MockForgotPasswordRepo mockForgotPasswordRepo;
  late ResetPasswordUseCase resetPasswordUseCase;

  final dummyResponse = SuccessResponse(
    const MessageEntity(message: 'ok'),
  );

  provideDummy<BaseResponse<MessageEntity>>(dummyResponse);

  setUp(() {
    mockForgotPasswordRepo = MockForgotPasswordRepo();
    resetPasswordUseCase = ResetPasswordUseCase(mockForgotPasswordRepo);
  });

  group('ResetPasswordUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        const entity = ResetPasswordEntity(
          email: 'john@test.com',
          newPassword: 'new123456',
        );

        when(
          mockForgotPasswordRepo.resetPassword(
            resetPasswordEntity: anyNamed('resetPasswordEntity'),
          ),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await resetPasswordUseCase(
          resetPasswordEntity: entity,
        );

        // Assert
        expect(result, isA<SuccessResponse<MessageEntity>>());
        final successResponse = result as SuccessResponse<MessageEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        const entity = ResetPasswordEntity(
          email: 'john@test.com',
          newPassword: 'new123456',
        );

        final dummyErrorResponse = ErrorResponse<MessageEntity>(
          errorMessage: 'reset failed',
        );

        when(
          mockForgotPasswordRepo.resetPassword(
            resetPasswordEntity: anyNamed('resetPasswordEntity'),
          ),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await resetPasswordUseCase(
          resetPasswordEntity: entity,
        );

        // Assert
        expect(result, isA<ErrorResponse<MessageEntity>>());
      },
    );
  });
}
