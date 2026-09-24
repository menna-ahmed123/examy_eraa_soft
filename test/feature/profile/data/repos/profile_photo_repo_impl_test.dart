import 'dart:io';

import 'package:examy/feature/profile/data/data_sources/local/profile_photo_local_data_source.dart';
import 'package:examy/feature/profile/data/repos/profile_photo_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_photo_repo_impl_test.mocks.dart';

@GenerateMocks([ProfilePhotoLocalDataSource])
void main() {
  late MockProfilePhotoLocalDataSource mockLocalDataSource;
  late ProfilePhotoRepoImpl repo;

  final dummySource = File('path/to/picked.jpg');

  setUp(() {
    mockLocalDataSource = MockProfilePhotoLocalDataSource();
    repo = ProfilePhotoRepoImpl(localDataSource: mockLocalDataSource);
  });

  group('getPhotoPath', () {
    test('returns the stored path from the local data source', () async {
      // Arrange
      when(
        mockLocalDataSource.getPhotoPath(any),
      ).thenAnswer((_) async => 'path/to/profile_photo_u1.jpg');

      // Act
      final result = await repo.getPhotoPath('u1');

      // Assert
      expect(result, 'path/to/profile_photo_u1.jpg');
    });

    test('returns null when no photo is stored', () async {
      // Arrange
      when(
        mockLocalDataSource.getPhotoPath(any),
      ).thenAnswer((_) async => null);

      // Act
      final result = await repo.getPhotoPath('u1');

      // Assert
      expect(result, isNull);
    });
  });

  group('savePhoto', () {
    test('returns the copied path from the local data source', () async {
      // Arrange
      when(
        mockLocalDataSource.savePhoto(
          userId: anyNamed('userId'),
          source: anyNamed('source'),
        ),
      ).thenAnswer((_) async => 'path/to/profile_photo_u1.jpg');

      // Act
      final result = await repo.savePhoto(
        userId: 'u1',
        source: dummySource,
      );

      // Assert
      expect(result, 'path/to/profile_photo_u1.jpg');
      verify(
        mockLocalDataSource.savePhoto(userId: 'u1', source: dummySource),
      ).called(1);
    });

    test('throws when the local data source throws', () async {
      // Arrange
      final error = Exception('save failed');

      when(
        mockLocalDataSource.savePhoto(
          userId: anyNamed('userId'),
          source: anyNamed('source'),
        ),
      ).thenThrow(error);

      // Act & Assert
      expect(
        () => repo.savePhoto(userId: 'u1', source: dummySource),
        throwsA(error),
      );
    });
  });
}
