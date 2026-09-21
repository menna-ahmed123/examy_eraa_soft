import 'dart:convert';

import 'package:examy/core/storage/secure_storage_service.dart';
import 'package:examy/core/storage/storage_keys.dart';
import 'package:examy/feature/exam/data/data_sources/local/exam_history_local_data_source_impl.dart';
import 'package:examy/feature/exam/data/models/exam_history_model.dart';
import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exam_history_local_data_source_impl_test.mocks.dart';

@GenerateMocks([SecureStorageService])
void main() {
  late MockSecureStorageService mockSecureStorageService;
  late ExamHistoryLocalDataSourceImpl localDataSource;

  setUp(() {
    mockSecureStorageService = MockSecureStorageService();

    localDataSource = ExamHistoryLocalDataSourceImpl(
      mockSecureStorageService,
    );
  });

  ExamHistoryModel historyModel({
    required String id,
    required String subjectId,
    required String completedAt,
  }) => ExamHistoryModel(
    id: id,
    subjectId: subjectId,
    subjectName: 'Math',
    examId: 'e1',
    examTitle: 'Algebra',
    numberOfQuestions: 10,
    durationMinutes: 30,
    timeTakenMinutes: 5,
    correct: 8,
    wrong: 2,
    percentage: 80.0,
    completedAt: completedAt,
  );

  final dummyEntry = ExamHistoryEntity(
    id: 'h1',
    subjectId: 's1',
    subjectName: 'Math',
    examId: 'e1',
    examTitle: 'Algebra',
    numberOfQuestions: 10,
    durationMinutes: 30,
    timeTakenMinutes: 5,
    correct: 8,
    wrong: 2,
    percentage: 80.0,
    completedAt: DateTime(2024, 1, 2),
  );

  group('getHistory', () {
    test('returns empty list when storage is empty', () async {
      // Arrange
      when(
        mockSecureStorageService.read(key: anyNamed('key')),
      ).thenAnswer((_) async => null);

      // Act
      final result = await localDataSource.getHistory();

      // Assert
      expect(result, isEmpty);
    });

    test('returns entities sorted by completedAt descending', () async {
      // Arrange
      final payload = jsonEncode([
        historyModel(
          id: 'old',
          subjectId: 's1',
          completedAt: '2024-01-01T10:00:00.000',
        ).toJson(),
        historyModel(
          id: 'new',
          subjectId: 's1',
          completedAt: '2024-01-02T10:00:00.000',
        ).toJson(),
      ]);

      when(
        mockSecureStorageService.read(key: anyNamed('key')),
      ).thenAnswer((_) async => payload);

      // Act
      final result = await localDataSource.getHistory();

      // Assert
      expect(result.length, 2);
      expect(result.first.id, 'new');
      expect(result.last.id, 'old');
    });
  });

  group('getHistoryBySubject', () {
    test('returns only entries for the given subject', () async {
      // Arrange
      final payload = jsonEncode([
        historyModel(
          id: 'h1',
          subjectId: 's1',
          completedAt: '2024-01-02T10:00:00.000',
        ).toJson(),
        historyModel(
          id: 'h2',
          subjectId: 's2',
          completedAt: '2024-01-01T10:00:00.000',
        ).toJson(),
      ]);

      when(
        mockSecureStorageService.read(key: anyNamed('key')),
      ).thenAnswer((_) async => payload);

      // Act
      final result = await localDataSource.getHistoryBySubject(
        subjectId: 's1',
      );

      // Assert
      expect(result.length, 1);
      expect(result.first.id, 'h1');
    });
  });

  group('saveHistoryEntry', () {
    test('writes the new entry to storage', () async {
      // Arrange
      when(
        mockSecureStorageService.read(key: anyNamed('key')),
      ).thenAnswer((_) async => null);
      when(
        mockSecureStorageService.write(
          key: anyNamed('key'),
          value: anyNamed('value'),
        ),
      ).thenAnswer((_) async {});

      // Act
      await localDataSource.saveHistoryEntry(dummyEntry);

      // Assert
      verify(
        mockSecureStorageService.write(
          key: StorageKeys.examHistory,
          value: anyNamed('value'),
        ),
      ).called(1);
    });
  });

  group('clearHistory', () {
    test('deletes history from storage', () async {
      // Arrange
      when(
        mockSecureStorageService.delete(key: anyNamed('key')),
      ).thenAnswer((_) async {});

      // Act
      await localDataSource.clearHistory();

      // Assert
      verify(
        mockSecureStorageService.delete(key: StorageKeys.examHistory),
      ).called(1);
    });
  });
}
