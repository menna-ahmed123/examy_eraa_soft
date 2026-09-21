import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/api/client/forgot_password_api_client.dart';
import 'package:examy/feature/forgot_password/data/data_sources/remote/forgot_password_remote_data_source_impl.dart';
import 'package:examy/feature/forgot_password/data/models/message_response_model.dart';
import 'package:examy/feature/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/reset_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/verify_reset_code_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'forgot_password_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([ForgotPasswordApiClient])
void main() {
  late MockForgotPasswordApiClient mockForgotPasswordApiClient;
  late ForgotPasswordRemoteDataSourceImpl forgotPasswordRemoteDataSourceImpl;

  setUp(() {
    mockForgotPasswordApiClient = MockForgotPasswordApiClient();

    forgotPasswordRemoteDataSourceImpl =
        ForgotPasswordRemoteDataSourceImpl(
          forgotPasswordApiClient: mockForgotPasswordApiClient,
        );
  });

  final messageResponse = MessageResponseModel(message: 'ok');

  const forgotPasswordEntity = ForgotPasswordEntity(email: 'john@test.com');
  const verifyResetCodeEntity = VerifyResetCodeEntity(resetCode: '123456');
  const resetPasswordEntity = ResetPasswordEntity(
    email: 'john@test.com',
    newPassword: 'new123456',
  );

  group('forgotPassword', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.forgotPassword(any),
      ).thenAnswer((_) async => messageResponse);

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.forgotPassword(
        forgotPasswordEntity: forgotPasswordEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageResponseModel>>());
      final success = result as SuccessResponse<MessageResponseModel>;
      expect(success.data, messageResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.forgotPassword(any),
      ).thenThrow(Exception('forgot password failed'));

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.forgotPassword(
        forgotPasswordEntity: forgotPasswordEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageResponseModel>>());
    });
  });

  group('verifyResetCode', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.verifyResetCode(any),
      ).thenAnswer((_) async => messageResponse);

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.verifyResetCode(
        verifyResetCodeEntity: verifyResetCodeEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageResponseModel>>());
      final success = result as SuccessResponse<MessageResponseModel>;
      expect(success.data, messageResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.verifyResetCode(any),
      ).thenThrow(Exception('verify failed'));

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.verifyResetCode(
        verifyResetCodeEntity: verifyResetCodeEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageResponseModel>>());
    });
  });

  group('resetPassword', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.resetPassword(any),
      ).thenAnswer((_) async => messageResponse);

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.resetPassword(
        resetPasswordEntity: resetPasswordEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<MessageResponseModel>>());
      final success = result as SuccessResponse<MessageResponseModel>;
      expect(success.data, messageResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockForgotPasswordApiClient.resetPassword(any),
      ).thenThrow(Exception('reset failed'));

      // Act
      final result = await forgotPasswordRemoteDataSourceImpl.resetPassword(
        resetPasswordEntity: resetPasswordEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<MessageResponseModel>>());
    });
  });
}
