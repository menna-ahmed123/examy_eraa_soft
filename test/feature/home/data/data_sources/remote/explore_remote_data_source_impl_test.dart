import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/api/client/explore_api_client.dart';
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source_impl.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subject_model.dart';
import 'package:examy/feature/home/data/models/subjects_metadata_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'explore_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([ExploreApiClient])
void main() {
  late MockExploreApiClient mockExploreApiClient;
  late ExploreRemoteDataSourceImpl exploreRemoteDataSourceImpl;

  setUp(() {
    mockExploreApiClient = MockExploreApiClient();

    exploreRemoteDataSourceImpl = ExploreRemoteDataSourceImpl(
      exploreApiClient: mockExploreApiClient,
    );
  });

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

  group('getSubjects', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExploreApiClient.getSubjects(
          page: anyNamed('page'),
          limit: anyNamed('limit'),
        ),
      ).thenAnswer((_) async => subjectsResponseModel);

      // Act
      final result = await exploreRemoteDataSourceImpl.getSubjects();

      // Assert
      expect(result, isA<SuccessResponse<SubjectsResponseModel>>());
      final success = result as SuccessResponse<SubjectsResponseModel>;
      expect(success.data, subjectsResponseModel);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExploreApiClient.getSubjects(
          page: anyNamed('page'),
          limit: anyNamed('limit'),
        ),
      ).thenThrow(Exception('get subjects failed'));

      // Act
      final result = await exploreRemoteDataSourceImpl.getSubjects();

      // Assert
      expect(result, isA<ErrorResponse<SubjectsResponseModel>>());
    });
  });

  group('getSubjectDetails', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExploreApiClient.getSubjectDetails(any),
      ).thenAnswer((_) async => subjectDetailsResponseModel);

      // Act
      final result = await exploreRemoteDataSourceImpl.getSubjectDetails('s1');

      // Assert
      expect(result, isA<SuccessResponse<SubjectDetailsResponseModel>>());
      final success =
          result as SuccessResponse<SubjectDetailsResponseModel>;
      expect(success.data, subjectDetailsResponseModel);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExploreApiClient.getSubjectDetails(any),
      ).thenThrow(Exception('get details failed'));

      // Act
      final result = await exploreRemoteDataSourceImpl.getSubjectDetails('s1');

      // Assert
      expect(result, isA<ErrorResponse<SubjectDetailsResponseModel>>());
    });
  });
}
