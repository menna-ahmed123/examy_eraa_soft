import 'package:bloc/bloc.dart';
import 'package:examy/core/networking/api_result.dart';
import 'package:examy/feature/login/data/repo/login_repo.dart';
import 'package:examy/feature/login/data/models/login_request_model.dart';
import 'package:examy/feature/login/presentation/cubit/login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState(status: Status.initial));

  Future<void> login(LoginRequestModel loginModel) async {
    emit(state.copyWith(status: Status.loading));
    final response = await _loginRepo.login(loginModel);
    switch (response) {
      case Success<dynamic>(data: final message):
        emit(state.copyWith(status: Status.success, message: message.toString()));
      case Error<dynamic>(error: final error):
        emit(state.copyWith(status: Status.error, message: error.toString()));
    }
  }
}
