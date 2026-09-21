import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/repos/explore_repo.dart';
import 'package:examy/feature/home/domain/use_cases/get_subject_details_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_subject_details_use_case_test.mocks.dart';

@GenerateMocks([ExploreRepo])
void main() {
  late MockExploreRepo mockExploreRepo;
  late GetSubjectDetailsUseCase getSubjectDetailsUseCase;

  const dummySubject = SubjectEntity(
    id: 's1',
    name: 'Math',
    icon: 'icon1',
    createdAt: '2024-01-01',
  );

  final dummyResponse = SuccessResponse(dummySubject);

  provideDummy<BaseResponse<SubjectEntity>>(dummyResponse);

  setUp(() {
    mockExploreRepo = MockExploreRepo();
    getSubjectDetailsUseCase = GetSubjectDetailsUseCase(mockExploreRepo);
  });

  group('GetSubjectDetailsUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        when(
          mockExploreRepo.getSubjectDetails(any),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await getSubjectDetailsUseCase('s1');

        // Assert
        expect(result, isA<SuccessResponse<SubjectEntity>>());
        final successResponse = result as SuccessResponse<SubjectEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<SubjectEntity>(
          errorMessage: 'get details failed',
        );

        when(
          mockExploreRepo.getSubjectDetails(any),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await getSubjectDetailsUseCase('s1');

        // Assert
        expect(result, isA<ErrorResponse<SubjectEntity>>());
      },
    );
  });
}
