import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/check_result_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/check_questions_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'check_questions_use_case_test.mocks.dart';

@GenerateMocks([ExamRepo])
void main() {
  late MockExamRepo mockExamRepo;
  late CheckQuestionsUseCase checkQuestionsUseCase;

  final dummyResponse = SuccessResponse(
    const CheckResultEntity(correct: 1, wrong: 0, percentage: 100.0),
  );

  provideDummy<BaseResponse<CheckResultEntity>>(dummyResponse);

  setUp(() {
    mockExamRepo = MockExamRepo();
    checkQuestionsUseCase = CheckQuestionsUseCase(mockExamRepo);
  });

  group('CheckQuestionsUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        const answers = [
          {'questionId': 'q1', 'correct': 'A1'},
        ];

        when(
          mockExamRepo.checkQuestions(
            answers: anyNamed('answers'),
            time: anyNamed('time'),
          ),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await checkQuestionsUseCase(
          answers: answers,
          time: 5,
        );

        // Assert
        expect(result, isA<SuccessResponse<CheckResultEntity>>());
        final successResponse =
            result as SuccessResponse<CheckResultEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        const answers = [
          {'questionId': 'q1', 'correct': 'A1'},
        ];

        final dummyErrorResponse = ErrorResponse<CheckResultEntity>(
          errorMessage: 'failed',
        );

        when(
          mockExamRepo.checkQuestions(
            answers: anyNamed('answers'),
            time: anyNamed('time'),
          ),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await checkQuestionsUseCase(
          answers: answers,
          time: 5,
        );

        // Assert
        expect(result, isA<ErrorResponse<CheckResultEntity>>());
      },
    );
  });
}
