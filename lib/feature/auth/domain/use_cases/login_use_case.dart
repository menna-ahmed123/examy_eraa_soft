import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/repos/auth_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginUseCase {
  LoginUseCase(this._authRepo);

  final AuthRepo _authRepo;

  Future<BaseResponse<AuthResponseEntity>> call({
    required String email,
    required String password,
  }) {
    return _authRepo.login(email: email, password: password);
  }
}
