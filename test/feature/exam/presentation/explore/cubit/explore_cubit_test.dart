import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:examy/feature/exam/domain/use_cases/get_subjects_use_case.dart';
import 'package:examy/feature/exam/presentation/explore/cubit/explore_cubit.dart';
import 'package:examy/feature/exam/presentation/explore/cubit/explore_event.dart';
import 'package:examy/feature/exam/presentation/explore/cubit/explore_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'explore_cubit_test.mocks.dart';

@GenerateMocks([GetSubjectsUseCase])
void main() {
  late MockGetSubjectsUseCase mockGetSubjectsUseCase;
  late ExploreCubit exploreCubit;

  setUp(() {
    mockGetSubjectsUseCase = MockGetSubjectsUseCase();

    exploreCubit = ExploreCubit(mockGetSubjectsUseCase);
  });

  final dummySubjects = [
    SubjectEntity(id: 's1', name: 'Math', icon: ''),
    SubjectEntity(id: 's2', name: 'Physics', icon: ''),
  ];

  final dummySuccessResponse = SuccessResponse<List<SubjectEntity>>(
    dummySubjects,
  );

  provideDummy<BaseResponse<List<SubjectEntity>>>(dummySuccessResponse);

  group('ExploreLoadSubjects', () {
    test('should load subjects successfully', () async {
      // Arrange
      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        exploreCubit.stream,
        emitsInOrder([
          isA<ExploreState>().having(
            (state) => state.subjectsState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ExploreState>()
              .having(
                (state) => state.subjectsState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.subjectsState?.data,
                'data',
                dummySubjects,
              )
              .having(
                (state) => state.subjectsState?.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      exploreCubit.onEvent(const ExploreEvent.loadSubjects());

      // Assert
      await future;

      verify(mockGetSubjectsUseCase()).called(1);
    });

    test('should return error when load subjects fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<List<SubjectEntity>>(
        errorMessage: 'load failed',
      );

      when(
        mockGetSubjectsUseCase(),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        exploreCubit.stream,
        emitsInOrder([
          isA<ExploreState>().having(
            (state) => state.subjectsState?.isLoading,
            'isLoading',
            true,
          ),
          isA<ExploreState>()
              .having(
                (state) => state.subjectsState?.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.subjectsState?.errorMessage,
                'errorMessage',
                'load failed',
              ),
        ]),
      );

      // Act
      exploreCubit.onEvent(const ExploreEvent.loadSubjects());

      // Assert
      await future;

      verify(mockGetSubjectsUseCase()).called(1);
    });
  });

  group('ExploreSearchChanged', () {
    test('should emit the new search query', () async {
      // Arrange
      final future = expectLater(
        exploreCubit.stream,
        emitsInOrder([
          isA<ExploreState>().having(
            (state) => state.searchQuery,
            'searchQuery',
            'math',
          ),
        ]),
      );

      // Act
      exploreCubit.onEvent(const ExploreEvent.searchChanged('math'));

      // Assert
      await future;
    });
  });
}
