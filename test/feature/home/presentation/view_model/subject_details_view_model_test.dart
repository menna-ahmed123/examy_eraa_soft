import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/use_cases/get_subject_details_use_case.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_state.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'subject_details_view_model_test.mocks.dart';

@GenerateMocks([GetSubjectDetailsUseCase])
void main() {
  late MockGetSubjectDetailsUseCase mockGetSubjectDetailsUseCase;
  late SubjectDetailsViewModel subjectDetailsViewModel;

  setUp(() {
    mockGetSubjectDetailsUseCase = MockGetSubjectDetailsUseCase();

    subjectDetailsViewModel = SubjectDetailsViewModel(
      mockGetSubjectDetailsUseCase,
    );
  });

  const dummySubject = SubjectEntity(
    id: 's1',
    name: 'Math',
    icon: 'icon1',
    createdAt: '2024-01-01',
  );

  final dummySuccessResponse = SuccessResponse<SubjectEntity>(dummySubject);

  provideDummy<BaseResponse<SubjectEntity>>(dummySuccessResponse);

  group('SubjectDetails', () {
    test('should get subject details successfully', () async {
      // Arrange
      when(
        mockGetSubjectDetailsUseCase(any),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        subjectDetailsViewModel.stream,
        emitsInOrder([
          isA<SubjectDetailsState>().having(
            (state) => state.isLoading,
            'isLoading',
            true,
          ),
          isA<SubjectDetailsState>()
              .having(
                (state) => state.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.subject,
                'subject',
                dummySubject,
              ),
        ]),
      );

      // Act
      await subjectDetailsViewModel.getSubjectDetails('s1');

      // Assert
      await future;

      verify(mockGetSubjectDetailsUseCase('s1')).called(1);
    });

    test('should return error when get subject details fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<SubjectEntity>(
        errorMessage: 'get details failed',
      );

      when(
        mockGetSubjectDetailsUseCase(any),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        subjectDetailsViewModel.stream,
        emitsInOrder([
          isA<SubjectDetailsState>().having(
            (state) => state.isLoading,
            'isLoading',
            true,
          ),
          isA<SubjectDetailsState>()
              .having(
                (state) => state.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.errorMessage,
                'errorMessage',
                'get details failed',
              ),
        ]),
      );

      // Act
      await subjectDetailsViewModel.getSubjectDetails('s1');

      // Assert
      await future;

      verify(mockGetSubjectDetailsUseCase('s1')).called(1);
    });
  });
}
