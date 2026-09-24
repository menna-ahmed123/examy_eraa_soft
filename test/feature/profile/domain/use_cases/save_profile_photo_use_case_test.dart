import 'dart:io';

import 'package:examy/feature/profile/domain/repos/profile_photo_repo.dart';
import 'package:examy/feature/profile/domain/use_cases/save_profile_photo_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'save_profile_photo_use_case_test.mocks.dart';

@GenerateMocks([ProfilePhotoRepo])
void main() {
  late MockProfilePhotoRepo mockProfilePhotoRepo;
  late SaveProfilePhotoUseCase saveProfilePhotoUseCase;

  final dummySource = File('path/to/picked.jpg');

  setUp(() {
    mockProfilePhotoRepo = MockProfilePhotoRepo();
    saveProfilePhotoUseCase = SaveProfilePhotoUseCase(mockProfilePhotoRepo);
  });

  group('SaveProfilePhotoUseCase', () {
    test('should return the copied path when saving succeeds', () async {
      // Arrange
      when(
        mockProfilePhotoRepo.savePhoto(
          userId: anyNamed('userId'),
          source: anyNamed('source'),
        ),
      ).thenAnswer((_) async => 'path/to/profile_photo_u1.jpg');

      // Act
      final result = await saveProfilePhotoUseCase(
        userId: 'u1',
        source: dummySource,
      );

      // Assert
      expect(result, 'path/to/profile_photo_u1.jpg');
    });

    test('should throw when the repository throws', () async {
      // Arrange
      final error = Exception('save failed');

      when(
        mockProfilePhotoRepo.savePhoto(
          userId: anyNamed('userId'),
          source: anyNamed('source'),
        ),
      ).thenThrow(error);

      // Act & Assert
      expect(
        () => saveProfilePhotoUseCase(userId: 'u1', source: dummySource),
        throwsA(error),
      );
    });
  });
}
