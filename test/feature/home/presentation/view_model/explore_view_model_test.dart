import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_metadata_entity.dart';
import 'package:examy/feature/home/domain/use_cases/get_subjects_use_case.dart';
import 'package:examy/feature/home/presentation/view_model/explore_event.dart';
import 'package:examy/feature/home/presentation/view_model/explore_state.dart';
import 'package:examy/feature/home/presentation/view_model/explore_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'explore_view_model_test.mocks.dart';

@GenerateMocks([GetSubjectsUseCase])
void main() {
  late MockGetSubjectsUseCase mockGetSubjectsUseCase;
  late ExploreViewModel exploreViewModel;

  setUp(() {
    mockGetSubjectsUseCase = MockGetSubjectsUseCase();

    exploreViewModel = ExploreViewModel(mockGetSubjectsUseCase);
  });

  final dummySubjects = SubjectsEntity(
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
      SubjectEntity(
        id: 's2',
        name: 'Physics',
        icon: 'icon2',
        createdAt: '2024-01-01',
      ),
    ],
  );

  final dummySuccessResponse = SuccessResponse<SubjectsEntity>(dummySubjects);

  provideDummy<BaseResponse<SubjectsEntity>>(dummySuccessResponse);

  group('GetSubjects', () {
    test('should get subjects successfully', () async {
      // Arrange
      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        exploreViewModel.stream,
        emitsInOrder([
          isA<ExploreState>().having(
            (state) => state.subjectsState.isLoading,
            'isLoading',
            true,
          ),
          isA<ExploreState>()
              .having(
                (state) => state.subjectsState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.subjectsState.data,
                'data',
                dummySubjects,
              )
              .having(
                (state) => state.subjectsState.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      exploreViewModel.doEvent(GetSubjectsEvent());

      // Assert
      await future;

      verify(mockGetSubjectsUseCase()).called(1);
    });

    test('should return error when get subjects fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<SubjectsEntity>(
        errorMessage: 'get subjects failed',
      );

      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        exploreViewModel.stream,
        emitsInOrder([
          isA<ExploreState>().having(
            (state) => state.subjectsState.isLoading,
            'isLoading',
            true,
          ),
          isA<ExploreState>()
              .having(
                (state) => state.subjectsState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.subjectsState.errorMessage,
                'errorMessage',
                'get subjects failed',
              ),
        ]),
      );

      // Act
      exploreViewModel.doEvent(GetSubjectsEvent());

      // Assert
      await future;

      verify(mockGetSubjectsUseCase()).called(1);
    });
  });

  group('searchSubjects', () {
    test('should filter subjects by query', () async {
      // Arrange
      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => dummySuccessResponse);

      exploreViewModel.doEvent(GetSubjectsEvent());
      await untilCalled(mockGetSubjectsUseCase());
      await Future.delayed(Duration.zero);

      // Act
      exploreViewModel.searchSubjects('math');

      // Assert
      final subjects = exploreViewModel.state.subjectsState.data?.subjects;
      expect(subjects?.length, 1);
      expect(subjects?.first.name, 'Math');
    });

    test('should restore all subjects when query is empty', () async {
      // Arrange
      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => dummySuccessResponse);

      exploreViewModel.doEvent(GetSubjectsEvent());
      await untilCalled(mockGetSubjectsUseCase());
      await Future.delayed(Duration.zero);

      exploreViewModel.searchSubjects('math');
      expect(
        exploreViewModel.state.subjectsState.data?.subjects.length,
        1,
      );

      // Act
      exploreViewModel.searchSubjects('');

      // Assert
      expect(
        exploreViewModel.state.subjectsState.data?.subjects.length,
        2,
      );
    });
  });
}
