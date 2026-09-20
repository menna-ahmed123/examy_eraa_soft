import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/use_cases/get_subject_details_use_case.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubjectDetailsViewModel extends Cubit<SubjectDetailsState> {
  SubjectDetailsViewModel(this._getSubjectDetailsUseCase)
    : super(SubjectDetailsState.initial());

  final GetSubjectDetailsUseCase _getSubjectDetailsUseCase;

  Future<void> getSubjectDetails(String subjectId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final response = await _getSubjectDetailsUseCase(subjectId);

    switch (response) {
      case SuccessResponse<SubjectEntity>():
        emit(state.copyWith(isLoading: false, subject: response.data));

      case ErrorResponse<SubjectEntity>():
        emit(
          state.copyWith(isLoading: false, errorMessage: response.errorMessage),
        );
    }
  }
}
