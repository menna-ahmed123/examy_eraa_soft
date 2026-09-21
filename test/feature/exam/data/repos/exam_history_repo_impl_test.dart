import 'package:examy/feature/exam/data/data_sources/local/exam_history_local_data_source.dart';
import 'package:examy/feature/exam/data/repos/exam_history_repo_impl.dart';
import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exam_history_repo_impl_test.mocks.dart';

@GenerateMocks([ExamHistoryLocalDataSource])
void main() {
  late MockExamHistoryLocalDataSource mockLocalDataSource;
  late ExamHistoryRepoImpl repo;

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

  setUp(() {
    mockLocalDataSource = MockExamHistoryLocalDataSource();
    repo = ExamHistoryRepoImpl(mockLocalDataSource);
  });

  group('getHistory', () {
    test('returns history from local data source', () async {
      // Arrange
      when(mockLocalDataSource.getHistory()).thenAnswer(
        (_) async => [dummyEntry],
      );

      // Act
      final result = await repo.getHistory();

      // Assert
      expect(result.length, 1);
      expect(result.first.id, 'h1');
    });

    test('throws when local data source throws', () async {
      // Arrange
      final error = Exception('read failed');

      when(mockLocalDataSource.getHistory()).thenThrow(error);

      // Act & Assert
      expect(() => repo.getHistory(), throwsA(error));
    });
  });

  group('getHistoryBySubject', () {
    test('returns filtered history from local data source', () async {
      // Arrange
      when(
        mockLocalDataSource.getHistoryBySubject(subjectId: anyNamed(
          'subjectId',
        )),
      ).thenAnswer((_) async => [dummyEntry]);

      // Act
      final result = await repo.getHistoryBySubject(subjectId: 's1');

      // Assert
      expect(result.length, 1);
      expect(result.first.subjectId, 's1');
    });

    test('throws when local data source throws', () async {
      // Arrange
      final error = Exception('read failed');

      when(
        mockLocalDataSource.getHistoryBySubject(subjectId: anyNamed(
          'subjectId',
        )),
      ).thenThrow(error);

      // Act & Assert
      expect(
        () => repo.getHistoryBySubject(subjectId: 's1'),
        throwsA(error),
      );
    });
  });

  group('saveHistoryEntry', () {
    test('delegates to local data source', () async {
      // Arrange
      when(
        mockLocalDataSource.saveHistoryEntry(any),
      ).thenAnswer((_) async {});

      // Act
      await repo.saveHistoryEntry(dummyEntry);

      // Assert
      verify(mockLocalDataSource.saveHistoryEntry(dummyEntry)).called(1);
    });
  });
}
