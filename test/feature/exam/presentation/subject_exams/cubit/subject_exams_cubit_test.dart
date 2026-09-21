import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/exam_entity.dart';
import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/use_cases/get_exam_history_by_subject_use_case.dart';
import 'package:examy/feature/exam/domain/use_cases/get_exams_use_case.dart';
import 'package:examy/feature/exam/presentation/subject_exams/cubit/subject_exams_cubit.dart';
import 'package:examy/feature/exam/presentation/subject_exams/cubit/subject_exams_event.dart';
import 'package:examy/feature/exam/presentation/subject_exams/cubit/subject_exams_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'subject_exams_cubit_test.mocks.dart';

@GenerateMocks([GetExamsUseCase, GetExamHistoryBySubjectUseCase])
void main() {
  late MockGetExamsUseCase mockGetExamsUseCase;
  late MockGetExamHistoryBySubjectUseCase mockGetExamHistoryBySubjectUseCase;
  late SubjectExamsCubit subjectExamsCubit;

  setUp(() {
    mockGetExamsUseCase = MockGetExamsUseCase();
    mockGetExamHistoryBySubjectUseCase =
        MockGetExamHistoryBySubjectUseCase();

    subjectExamsCubit = SubjectExamsCubit(
      mockGetExamsUseCase,
      mockGetExamHistoryBySubjectUseCase,
    );
  });

  final dummyExams = [
    ExamEntity(
      id: 'e1',
      title: 'Algebra',
      duration: 30,
      subjectId: 's1',
      numberOfQuestions: 10,
    ),
  ];

  final dummySuccessResponse = SuccessResponse<List<ExamEntity>>(dummyExams);

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

  provideDummy<BaseResponse<List<ExamEntity>>>(dummySuccessResponse);

  group('SubjectExamsLoad', () {
    test('should load exams successfully with history', () async {
      // Arrange
      when(
        mockGetExamHistoryBySubjectUseCase(subjectId: anyNamed('subjectId')),
      ).thenAnswer((_) async => dummyHistory);
      when(
        mockGetExamsUseCase(subjectId: anyNamed('subjectId')),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        subjectExamsCubit.stream,
        emitsInOrder([
          isA<SubjectExamsState>().having(
            (state) => state.examsState?.isLoading,
            'isLoading',
            true,
          ),
          isA<SubjectExamsState>()
              .having(
                (state) => state.examsState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.examsState?.data,
                'data',
                dummyExams,
              )
              .having(
                (state) => state.history,
                'history',
                dummyHistory,
              ),
        ]),
      );

      // Act
      subjectExamsCubit.onEvent(
        const SubjectExamsEvent.load(subjectId: 's1'),
      );

      // Assert
      await future;

      verify(mockGetExamsUseCase(subjectId: 's1')).called(1);
    });

    test('should return error when load exams fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<List<ExamEntity>>(
        errorMessage: 'load failed',
      );

      when(
        mockGetExamHistoryBySubjectUseCase(subjectId: anyNamed('subjectId')),
      ).thenAnswer((_) async => dummyHistory);
      when(
        mockGetExamsUseCase(subjectId: anyNamed('subjectId')),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        subjectExamsCubit.stream,
        emitsInOrder([
          isA<SubjectExamsState>().having(
            (state) => state.examsState?.isLoading,
            'isLoading',
            true,
          ),
          isA<SubjectExamsState>()
              .having(
                (state) => state.examsState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.examsState?.errorMessage,
                'errorMessage',
                'load failed',
              ),
        ]),
      );

      // Act
      subjectExamsCubit.onEvent(
        const SubjectExamsEvent.load(subjectId: 's1'),
      );

      // Assert
      await future;

      verify(mockGetExamsUseCase(subjectId: 's1')).called(1);
    });
  });
}
