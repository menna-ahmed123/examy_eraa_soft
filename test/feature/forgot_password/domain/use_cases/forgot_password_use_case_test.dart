import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/repos/forgot_password_repo.dart';
import 'package:examy/feature/forgot_password/domain/use_cases/forgot_password_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'forgot_password_use_case_test.mocks.dart';

@GenerateMocks([ForgotPasswordRepo])
void main() {
  late MockForgotPasswordRepo mockForgotPasswordRepo;
  late ForgotPasswordUseCase forgotPasswordUseCase;

  final dummyResponse = SuccessResponse(
    const MessageEntity(message: 'ok'),
  );

  provideDummy<BaseResponse<MessageEntity>>(dummyResponse);

  setUp(() {
    mockForgotPasswordRepo = MockForgotPasswordRepo();
    forgotPasswordUseCase = ForgotPasswordUseCase(mockForgotPasswordRepo);
  });

  group('ForgotPasswordUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        const entity = ForgotPasswordEntity(email: 'john@test.com');

        when(
          mockForgotPasswordRepo.forgotPassword(
            forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
          ),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await forgotPasswordUseCase(
          forgotPasswordEntity: entity,
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
        const entity = ForgotPasswordEntity(email: 'john@test.com');

        final dummyErrorResponse = ErrorResponse<MessageEntity>(
          errorMessage: 'forgot password failed',
        );

        when(
          mockForgotPasswordRepo.forgotPassword(
            forgotPasswordEntity: anyNamed('forgotPasswordEntity'),
          ),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await forgotPasswordUseCase(
          forgotPasswordEntity: entity,
        );

        // Assert
        expect(result, isA<ErrorResponse<MessageEntity>>());
      },
    );
  });
}
