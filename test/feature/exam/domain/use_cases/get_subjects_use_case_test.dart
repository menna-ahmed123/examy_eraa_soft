import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:examy/feature/exam/domain/use_cases/get_subjects_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_subjects_use_case_test.mocks.dart';

@GenerateMocks([ExamRepo])
void main() {
  late MockExamRepo mockExamRepo;
  late GetSubjectsUseCase getSubjectsUseCase;

  final dummyResponse = SuccessResponse(
    [SubjectEntity(id: 's1', name: 'Math', icon: '')],
  );

  provideDummy<BaseResponse<List<SubjectEntity>>>(dummyResponse);

  setUp(() {
    mockExamRepo = MockExamRepo();
    getSubjectsUseCase = GetSubjectsUseCase(mockExamRepo);
  });

  group('GetSubjectsUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        when(
          mockExamRepo.getSubjects(),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await getSubjectsUseCase();

        // Assert
        expect(result, isA<SuccessResponse<List<SubjectEntity>>>());
        final successResponse =
            result as SuccessResponse<List<SubjectEntity>>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<List<SubjectEntity>>(
          errorMessage: 'failed',
        );

        when(
          mockExamRepo.getSubjects(),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await getSubjectsUseCase();

        // Assert
        expect(result, isA<ErrorResponse<List<SubjectEntity>>>());
      },
    );
  });
}
