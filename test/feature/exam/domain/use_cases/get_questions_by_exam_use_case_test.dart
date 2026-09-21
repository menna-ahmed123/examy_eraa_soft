import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/question_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/get_questions_by_exam_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_questions_by_exam_use_case_test.mocks.dart';

@GenerateMocks([ExamRepo])
void main() {
  late MockExamRepo mockExamRepo;
  late GetQuestionsByExamUseCase getQuestionsByExamUseCase;

  final dummyResponse = SuccessResponse(
    [QuestionEntity(id: 'q1', question: '2+2?', answers: [])],
  );

  provideDummy<BaseResponse<List<QuestionEntity>>>(dummyResponse);

  setUp(() {
    mockExamRepo = MockExamRepo();
    getQuestionsByExamUseCase = GetQuestionsByExamUseCase(mockExamRepo);
  });

  group('GetQuestionsByExamUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        when(
          mockExamRepo.getQuestionsByExam(examId: anyNamed('examId')),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await getQuestionsByExamUseCase(examId: 'e1');

        // Assert
        expect(result, isA<SuccessResponse<List<QuestionEntity>>>());
        final successResponse =
            result as SuccessResponse<List<QuestionEntity>>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<List<QuestionEntity>>(
          errorMessage: 'failed',
        );

        when(
          mockExamRepo.getQuestionsByExam(examId: anyNamed('examId')),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await getQuestionsByExamUseCase(examId: 'e1');

        // Assert
        expect(result, isA<ErrorResponse<List<QuestionEntity>>>());
      },
    );
  });
}
