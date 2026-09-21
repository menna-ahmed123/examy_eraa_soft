import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/exam_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/get_exams_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_exams_use_case_test.mocks.dart';

@GenerateMocks([ExamRepo])
void main() {
  late MockExamRepo mockExamRepo;
  late GetExamsUseCase getExamsUseCase;

  final dummyResponse = SuccessResponse(
    [
      ExamEntity(
        id: 'e1',
        title: 'Algebra',
        duration: 30,
        subjectId: 's1',
        numberOfQuestions: 10,
      ),
    ],
  );

  provideDummy<BaseResponse<List<ExamEntity>>>(dummyResponse);

  setUp(() {
    mockExamRepo = MockExamRepo();
    getExamsUseCase = GetExamsUseCase(mockExamRepo);
  });

  group('GetExamsUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        when(
          mockExamRepo.getExams(subjectId: anyNamed('subjectId')),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await getExamsUseCase(subjectId: 's1');

        // Assert
        expect(result, isA<SuccessResponse<List<ExamEntity>>>());
        final successResponse =
            result as SuccessResponse<List<ExamEntity>>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<List<ExamEntity>>(
          errorMessage: 'failed',
        );

        when(
          mockExamRepo.getExams(subjectId: anyNamed('subjectId')),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await getExamsUseCase(subjectId: 's1');

        // Assert
        expect(result, isA<ErrorResponse<List<ExamEntity>>>());
      },
    );
  });
}
