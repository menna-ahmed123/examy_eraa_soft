import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/entities/update_profile_params.dart';
import 'package:examy/feature/profile/domain/repos/profile_repo.dart';
import 'package:examy/feature/profile/domain/use_cases/update_profile_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'update_profile_use_case_test.mocks.dart';

@GenerateMocks([ProfileRepo])
void main() {
  late MockProfileRepo mockProfileRepo;
  late UpdateProfileUseCase updateProfileUseCase;

  final dummyResponse = SuccessResponse(
    ProfileEntity(
      id: 'id1',
      username: 'johndoe',
      firstName: 'John',
      lastName: 'Doe',
      email: 'john@test.com',
      phone: '01000000000',
      role: 'Student',
      isVerified: true,
      createdAt: '2024-01-01',
    ),
  );

  provideDummy<BaseResponse<ProfileEntity>>(dummyResponse);

  setUp(() {
    mockProfileRepo = MockProfileRepo();
    updateProfileUseCase = UpdateProfileUseCase(profileRepo: mockProfileRepo);
  });

  group('UpdateProfileUseCase', () {
    test(
      'should return success response when repository updates profile successfully',
      () async {
        // Arrange
        const params = UpdateProfileParams(
          username: 'johndoe',
          firstName: 'John',
          lastName: 'Doe',
          email: 'john@test.com',
          phone: '01000000000',
        );

        when(
          mockProfileRepo.updateProfile(params: params),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await updateProfileUseCase(params: params);

        // Assert
        expect(result, isA<SuccessResponse<ProfileEntity>>());
        final successResponse = result as SuccessResponse<ProfileEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails to update profile',
      () async {
        // Arrange
        const params = UpdateProfileParams(
          username: 'johndoe',
          firstName: 'John',
          lastName: 'Doe',
          email: 'john@test.com',
          phone: '01000000000',
        );

        final dummyErrorResponse = ErrorResponse<ProfileEntity>(
          errorMessage: 'update profile failed',
        );

        when(
          mockProfileRepo.updateProfile(params: params),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await updateProfileUseCase(params: params);

        // Assert
        expect(result, isA<ErrorResponse<ProfileEntity>>());
      },
    );
  });
}
