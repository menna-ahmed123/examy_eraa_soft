import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subject_model.dart';
import 'package:examy/feature/home/data/models/subjects_metadata_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';
import 'package:examy/feature/home/data/repos/explore_repo_impl.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'explore_repo_impl_test.mocks.dart';

@GenerateMocks([ExploreRemoteDataSource])
void main() {
  late MockExploreRemoteDataSource mockRemoteDataSource;
  late ExploreRepoImpl repo;

  final subjectsResponseModel = SubjectsResponseModel(
    message: 'ok',
    metadata: SubjectsMetadataModel(
      currentPage: 1,
      numberOfPages: 5,
      limit: 10,
    ),
    subjects: [
      SubjectModel(
        id: 's1',
        name: 'Math',
        icon: 'icon1',
        createdAt: '2024-01-01',
      ),
    ],
  );

  final subjectDetailsResponseModel = SubjectDetailsResponseModel(
    message: 'ok',
    category: SubjectModel(
      id: 's1',
      name: 'Math',
      icon: 'icon1',
      createdAt: '2024-01-01',
    ),
  );

  provideDummy<BaseResponse<SubjectsResponseModel>>(
    SuccessResponse<SubjectsResponseModel>(subjectsResponseModel),
  );
  provideDummy<BaseResponse<SubjectDetailsResponseModel>>(
    SuccessResponse<SubjectDetailsResponseModel>(subjectDetailsResponseModel),
  );

  setUp(() {
    mockRemoteDataSource = MockExploreRemoteDataSource();
    repo = ExploreRepoImpl(exploreRemoteDataSource: mockRemoteDataSource);
  });

  group('getSubjects', () {
    test('returns SuccessResponse mapped to SubjectsEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.getSubjects(
          page: anyNamed('page'),
          limit: anyNamed('limit'),
        ),
      ).thenAnswer(
        (_) async => SuccessResponse<SubjectsResponseModel>(
          subjectsResponseModel,
        ),
      );

      // Act
      final result = await repo.getSubjects();

      // Assert
      expect(result, isA<SuccessResponse<SubjectsEntity>>());
      final data = (result as SuccessResponse<SubjectsEntity>).data;
      expect(data.subjects.length, 1);
      expect(data.subjects.first.name, 'Math');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.getSubjects(
          page: anyNamed('page'),
          limit: anyNamed('limit'),
        ),
      ).thenAnswer((_) async => ErrorResponse<SubjectsResponseModel>(
        errorMessage: 'get subjects failed',
      ));

      // Act
      final result = await repo.getSubjects();

      // Assert
      expect(result, isA<ErrorResponse<SubjectsEntity>>());
    });
  });

  group('getSubjectDetails', () {
    test('returns SuccessResponse mapped to SubjectEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.getSubjectDetails(any),
      ).thenAnswer(
        (_) async => SuccessResponse<SubjectDetailsResponseModel>(
          subjectDetailsResponseModel,
        ),
      );

      // Act
      final result = await repo.getSubjectDetails('s1');

      // Assert
      expect(result, isA<SuccessResponse<SubjectEntity>>());
      final data = (result as SuccessResponse<SubjectEntity>).data;
      expect(data.name, 'Math');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.getSubjectDetails(any),
      ).thenAnswer((_) async => ErrorResponse<SubjectDetailsResponseModel>(
        errorMessage: 'get details failed',
      ));

      // Act
      final result = await repo.getSubjectDetails('s1');

      // Assert
      expect(result, isA<ErrorResponse<SubjectEntity>>());
    });
  });
}
