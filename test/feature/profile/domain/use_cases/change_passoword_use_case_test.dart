import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/change_password_entity.dart';
import 'package:examy/feature/profile/domain/entities/change_password_params.dart';
import 'package:examy/feature/profile/domain/repos/profile_repo.dart';
import 'package:examy/feature/profile/domain/use_cases/change_passoword_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'change_passoword_use_case_test.mocks.dart';

@GenerateMocks([ProfileRepo])
void main() {
  late MockProfileRepo mockProfileRepo;
  late ChangePasswordUseCase changePasswordUseCase;

  final dummyResponse = SuccessResponse(
    const ChangePasswordEntity(token: 'token123'),
  );

  provideDummy<BaseResponse<ChangePasswordEntity>>(dummyResponse);

  setUp(() {
    mockProfileRepo = MockProfileRepo();
    changePasswordUseCase = ChangePasswordUseCase(
      profileRepo: mockProfileRepo,
    );
  });

  group('ChangePasswordUseCase', () {
    test(
      'should return success response when repository changes password successfully',
      () async {
        // Arrange
        const params = ChangePasswordParams(
          oldPassword: 'old123456',
          password: 'new123456',
          rePassword: 'new123456',
        );

        when(
          mockProfileRepo.changePassword(params),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await changePasswordUseCase(params);

        // Assert
        expect(result, isA<SuccessResponse<ChangePasswordEntity>>());
        final successResponse =
            result as SuccessResponse<ChangePasswordEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails to change password',
      () async {
        // Arrange
        const params = ChangePasswordParams(
          oldPassword: 'old123456',
          password: 'new123456',
          rePassword: 'new123456',
        );

        final dummyErrorResponse = ErrorResponse<ChangePasswordEntity>(
          errorMessage: 'change password failed',
        );

        when(
          mockProfileRepo.changePassword(params),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await changePasswordUseCase(params);

        // Assert
        expect(result, isA<ErrorResponse<ChangePasswordEntity>>());
      },
    );
  });
}
