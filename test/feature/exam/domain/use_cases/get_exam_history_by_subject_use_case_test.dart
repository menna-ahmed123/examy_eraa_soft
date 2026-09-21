import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_history_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/get_exam_history_by_subject_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_exam_history_by_subject_use_case_test.mocks.dart';

@GenerateMocks([ExamHistoryRepo])
void main() {
  late MockExamHistoryRepo mockExamHistoryRepo;
  late GetExamHistoryBySubjectUseCase getExamHistoryBySubjectUseCase;

  final dummyHistory = [
    ExamHistoryEntity(
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
    ),
  ];

  setUp(() {
    mockExamHistoryRepo = MockExamHistoryRepo();
    getExamHistoryBySubjectUseCase = GetExamHistoryBySubjectUseCase(
      mockExamHistoryRepo,
    );
  });

  group('GetExamHistoryBySubjectUseCase', () {
    test(
      'should return history when repository succeeds',
      () async {
        // Arrange
        when(
          mockExamHistoryRepo.getHistoryBySubject(
            subjectId: anyNamed('subjectId'),
          ),
        ).thenAnswer((_) async => dummyHistory);

        // Act
        final result = await getExamHistoryBySubjectUseCase(subjectId: 's1');

        // Assert
        expect(result, dummyHistory);
      },
    );

    test(
      'should throw when repository throws',
      () async {
        // Arrange
        final error = Exception('read failed');

        when(
          mockExamHistoryRepo.getHistoryBySubject(
            subjectId: anyNamed('subjectId'),
          ),
        ).thenThrow(error);

        // Act & Assert
        expect(
          () => getExamHistoryBySubjectUseCase(subjectId: 's1'),
          throwsA(error),
        );
      },
    );
  });
}
