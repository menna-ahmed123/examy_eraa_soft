import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/use_cases/get_exam_history_use_case.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_cubit.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_event.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exam_history_cubit_test.mocks.dart';

@GenerateMocks([GetExamHistoryUseCase])
void main() {
  late MockGetExamHistoryUseCase mockGetExamHistoryUseCase;
  late ExamHistoryCubit examHistoryCubit;

  setUp(() {
    mockGetExamHistoryUseCase = MockGetExamHistoryUseCase();

    examHistoryCubit = ExamHistoryCubit(mockGetExamHistoryUseCase);
  });

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

  group('ExamHistoryLoad', () {
    test('should load history successfully', () async {
      // Arrange
      when(
        mockGetExamHistoryUseCase(),
      ).thenAnswer((_) async => dummyHistory);

      final future = expectLater(
        examHistoryCubit.stream,
        emitsInOrder([
          isA<ExamHistoryState>().having(
            (state) => state.historyState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ExamHistoryState>()
              .having(
                (state) => state.historyState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.historyState?.data,
                'data',
                dummyHistory,
              )
              .having(
                (state) => state.historyState?.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      examHistoryCubit.onEvent(const ExamHistoryEvent.load());

      // Assert
      await future;

      verify(mockGetExamHistoryUseCase()).called(1);
    });

    test('should return error when load history throws', () async {
      // Arrange
      final error = Exception('read failed');

      when(mockGetExamHistoryUseCase()).thenThrow(error);

      final future = expectLater(
        examHistoryCubit.stream,
        emitsInOrder([
          isA<ExamHistoryState>().having(
            (state) => state.historyState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ExamHistoryState>().having(
            (state) => state.historyState?.isLoading,
            'isLoading',
            false,
          ),
        ]),
      );

      // Act
      examHistoryCubit.onEvent(const ExamHistoryEvent.load());

      // Assert
      await future;

      verify(mockGetExamHistoryUseCase()).called(1);
      expect(
        examHistoryCubit.state.historyState?.errorMessage,
        isNotEmpty,
      );
    });
  });
}
