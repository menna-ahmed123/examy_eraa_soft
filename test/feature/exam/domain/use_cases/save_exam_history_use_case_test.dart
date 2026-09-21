import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_history_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/save_exam_history_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'save_exam_history_use_case_test.mocks.dart';

@GenerateMocks([ExamHistoryRepo])
void main() {
  late MockExamHistoryRepo mockExamHistoryRepo;
  late SaveExamHistoryUseCase saveExamHistoryUseCase;

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
    mockExamHistoryRepo = MockExamHistoryRepo();
    saveExamHistoryUseCase = SaveExamHistoryUseCase(mockExamHistoryRepo);
  });

  group('SaveExamHistoryUseCase', () {
    test(
      'should delegate to repository when saving succeeds',
      () async {
        // Arrange
        when(
          mockExamHistoryRepo.saveHistoryEntry(any),
        ).thenAnswer((_) async {});

        // Act
        await saveExamHistoryUseCase(dummyEntry);

        // Assert
        verify(mockExamHistoryRepo.saveHistoryEntry(dummyEntry)).called(1);
      },
    );

    test(
      'should throw when repository throws',
      () async {
        // Arrange
        final error = Exception('save failed');

        when(
          mockExamHistoryRepo.saveHistoryEntry(any),
        ).thenThrow(error);

        // Act & Assert
        expect(
          () => saveExamHistoryUseCase(dummyEntry),
          throwsA(error),
        );
      },
    );
  });
}
