import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:examy/feature/home/domain/use_cases/get_subjects_use_case.dart';
import 'package:examy/feature/home/presentation/view_model/explore_event.dart';
import 'package:examy/feature/home/presentation/view_model/explore_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExploreViewModel extends Cubit<ExploreState> {
  ExploreViewModel(this._getSubjectsUseCase) : super(ExploreState.initial());

  final GetSubjectsUseCase _getSubjectsUseCase;

  List<SubjectEntity> _allSubjects = [];

  void doEvent(ExploreEvent event) {
    switch (event) {
      case GetSubjectsEvent():
        _getSubjects();
        break;
    }
  }

  Future<void> _getSubjects() async {
    emit(
      state.copyWith(
        subjectsState: state.subjectsState.copyWith(
          isLoading: true,
          errorMessage: '',
        ),
      ),
    );

    final BaseResponse<SubjectsEntity> response = await _getSubjectsUseCase();

    switch (response) {
      case SuccessResponse<SubjectsEntity>():
        _allSubjects = response.data.subjects;

        emit(
          state.copyWith(
            subjectsState: state.subjectsState.copyWith(
              isLoading: false,
              data: response.data,
              errorMessage: '',
            ),
          ),
        );
        break;

      case ErrorResponse<SubjectsEntity>():
        emit(
          state.copyWith(
            subjectsState: state.subjectsState.copyWith(
              isLoading: false,
              errorMessage: response.errorMessage,
            ),
          ),
        );
        break;
    }
  }

  void searchSubjects(String query) {
    final searchQuery = query.trim().toLowerCase();

    if (searchQuery.isEmpty) {
      _restoreSubjects();
      return;
    }

    final filteredSubjects = _allSubjects
        .where((subject) => subject.name.toLowerCase().contains(searchQuery))
        .toList();

    final currentData = state.subjectsState.data;

    if (currentData == null) {
      return;
    }

    emit(
      state.copyWith(
        subjectsState: state.subjectsState.copyWith(
          data: currentData.copyWith(subjects: filteredSubjects),
        ),
      ),
    );
  }

  void _restoreSubjects() {
    final currentData = state.subjectsState.data;

    if (currentData == null) {
      return;
    }

    emit(
      state.copyWith(
        subjectsState: state.subjectsState.copyWith(
          data: currentData.copyWith(subjects: _allSubjects),
        ),
      ),
    );
  }
}
