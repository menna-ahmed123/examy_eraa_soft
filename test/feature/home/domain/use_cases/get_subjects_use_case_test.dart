import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_metadata_entity.dart';
import 'package:examy/feature/home/domain/repos/explore_repo.dart';
import 'package:examy/feature/home/domain/use_cases/get_subjects_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_subjects_use_case_test.mocks.dart';

@GenerateMocks([ExploreRepo])
void main() {
  late MockExploreRepo mockExploreRepo;
  late GetSubjectsUseCase getSubjectsUseCase;

  final dummyResponse = SuccessResponse(
    SubjectsEntity(
      metadata: const SubjectsMetadataEntity(
        currentPage: 1,
        numberOfPages: 5,
        limit: 10,
      ),
      subjects: const [
        SubjectEntity(
          id: 's1',
          name: 'Math',
          icon: 'icon1',
          createdAt: '2024-01-01',
        ),
      ],
    ),
  );

  provideDummy<BaseResponse<SubjectsEntity>>(dummyResponse);

  setUp(() {
    mockExploreRepo = MockExploreRepo();
    getSubjectsUseCase = GetSubjectsUseCase(mockExploreRepo);
  });

  group('GetSubjectsUseCase', () {
    test(
      'should return success response when repository succeeds',
      () async {
        // Arrange
        when(
          mockExploreRepo.getSubjects(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenAnswer((_) async => dummyResponse);

        // Act
        final result = await getSubjectsUseCase();

        // Assert
        expect(result, isA<SuccessResponse<SubjectsEntity>>());
        final successResponse = result as SuccessResponse<SubjectsEntity>;
        expect(successResponse.data, dummyResponse.data);
      },
    );

    test(
      'should return error response when repository fails',
      () async {
        // Arrange
        final dummyErrorResponse = ErrorResponse<SubjectsEntity>(
          errorMessage: 'get subjects failed',
        );

        when(
          mockExploreRepo.getSubjects(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenAnswer((_) async => dummyErrorResponse);

        // Act
        final result = await getSubjectsUseCase();

        // Assert
        expect(result, isA<ErrorResponse<SubjectsEntity>>());
      },
    );
  });
}
