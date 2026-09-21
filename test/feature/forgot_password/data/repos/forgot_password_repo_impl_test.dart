import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/data/data_sources/remote/forgot_password_remote_data_source.dart';
import 'package:examy/feature/forgot_password/data/models/message_response_model.dart';
import 'package:examy/feature/forgot_password/data/repos/forgot_password_repo_impl.dart';
import 'package:examy/feature/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/reset_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/verify_reset_code_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'forgot_password_repo_impl_test.mocks.dart';

@GenerateMocks([ForgotPasswordRemoteDataSource])
void main() {
  late MockForgotPasswordRemoteDataSource mockRemoteDataSource;
  late ForgotPasswordRepoImpl repo;

  final messageResponse = MessageResponseModel(message: 'ok');

  const forgotPasswordEntity = ForgotPasswordEntity(email: 'john@test.com');
  const verifyResetCodeEntity = VerifyResetCodeEntity(resetCode: '123456');
  const resetPasswordEntity = ResetPasswordEntity(
    email: 'john@test.com',
    newPassword: 'new123456',
  );

  provideDummy<BaseResponse<MessageResponseModel>>(
    SuccessResponse<MessageResponseModel>(messageResponse),
  );

  setUp(() {
    mockRemoteDataSource = MockForgotPasswordRemoteDataSource();
    repo = ForgotPasswordRepoImpl(
      forgotPasswordRemoteDataSource: mockRemoteDataSource,
    );
  });

  group('forgotPassword', () {
    test('returns SuccessResponse mapped to MessageEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.forgotPassword(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer(
        (_) async => SuccessResponse<MessageResponseModel>(messageResponse),
      );

      // Act
      final result = await repo.forgotPassword(
        forgotPasswordEntity: forgotPasswordEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageEntity>>());
      final data = (result as SuccessResponse<MessageEntity>).data;
      expect(data.message, 'ok');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.forgotPassword(
          forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
        ),
      ).thenAnswer((_) async => ErrorResponse<MessageResponseModel>(
        errorMessage: 'forgot password failed',
      ));

      // Act
      final result = await repo.forgotPassword(
        forgotPasswordEntity: forgotPasswordEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageEntity>>());
    });
  });

  group('verifyResetCode', () {
    test('returns SuccessResponse mapped to MessageEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.verifyResetCode(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).thenAnswer(
        (_) async => SuccessResponse<MessageResponseModel>(messageResponse),
      );

      // Act
      final result = await repo.verifyResetCode(
        verifyResetCodeEntity: verifyResetCodeEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageEntity>>());
      final data = (result as SuccessResponse<MessageEntity>).data;
      expect(data.message, 'ok');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.verifyResetCode(
          verifyResetCodeEntity: anyNamed('verifyResetCodeEntity'),
        ),
      ).thenAnswer((_) async => ErrorResponse<MessageResponseModel>(
        errorMessage: 'verify failed',
      ));

      // Act
      final result = await repo.verifyResetCode(
        verifyResetCodeEntity: verifyResetCodeEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageEntity>>());
    });
  });

  group('resetPassword', () {
    test('returns SuccessResponse mapped to MessageEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.resetPassword(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).thenAnswer(
        (_) async => SuccessResponse<MessageResponseModel>(messageResponse),
      );

      // Act
      final result = await repo.resetPassword(
        resetPasswordEntity: resetPasswordEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageEntity>>());
      final data = (result as SuccessResponse<MessageEntity>).data;
      expect(data.message, 'ok');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.resetPassword(
          resetPasswordEntity: anyNamed('resetPasswordEntity'),
        ),
      ).thenAnswer((_) async => ErrorResponse<MessageResponseModel>(
        errorMessage: 'reset failed',
      ));

      // Act
      final result = await repo.resetPassword(
        resetPasswordEntity: resetPasswordEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageEntity>>());
    });
  });
}
