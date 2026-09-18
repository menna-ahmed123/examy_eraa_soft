import 'package:bloc/bloc.dart';
import 'package:examy/core/networking/api_result.dart';
import 'package:examy/feature/home/data/models/exams_response_model.dart';
import 'package:examy/feature/home/data/repo/home_repo.dart';
import 'package:examy/feature/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState(status: Status.initial));

  Future<void> getExams() async {
    emit(state.copyWith(status: Status.loading));
    final response = await _homeRepo.getExams();
    switch (response) {
      case Success<dynamic>(data: final examsResponse):
        final examModel = examsResponse as ExamsResponseModel;
        emit(state.copyWith(status: Status.success, exams: examModel.exams));
      case Error<dynamic>(error: final error):
        emit(state.copyWith(status: Status.error, message: error.toString()));
    }
  }
}
