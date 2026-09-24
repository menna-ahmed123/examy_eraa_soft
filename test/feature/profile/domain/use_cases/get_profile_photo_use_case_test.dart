import 'package:examy/feature/profile/domain/repos/profile_photo_repo.dart';
import 'package:examy/feature/profile/domain/use_cases/get_profile_photo_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_profile_photo_use_case_test.mocks.dart';

@GenerateMocks([ProfilePhotoRepo])
void main() {
  late MockProfilePhotoRepo mockProfilePhotoRepo;
  late GetProfilePhotoUseCase getProfilePhotoUseCase;

  setUp(() {
    mockProfilePhotoRepo = MockProfilePhotoRepo();
    getProfilePhotoUseCase = GetProfilePhotoUseCase(mockProfilePhotoRepo);
  });

  group('GetProfilePhotoUseCase', () {
    test('should return the stored path when a photo exists', () async {
      // Arrange
      when(
        mockProfilePhotoRepo.getPhotoPath(any),
      ).thenAnswer((_) async => 'path/to/profile_photo_u1.jpg');

      // Act
      final result = await getProfilePhotoUseCase('u1');

      // Assert
      expect(result, 'path/to/profile_photo_u1.jpg');
    });

    test('should return null when no photo is stored', () async {
      // Arrange
      when(
        mockProfilePhotoRepo.getPhotoPath(any),
      ).thenAnswer((_) async => null);

      // Act
      final result = await getProfilePhotoUseCase('u1');

      // Assert
      expect(result, isNull);
    });
  });
}
