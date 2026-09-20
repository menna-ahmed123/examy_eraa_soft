import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/auth/data/models/auth_response_model.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';

abstract class AuthRemoteDataSource {
  Future<BaseResponse<AuthResponseModel>> login({
    required String email,
    required String password,
  });
  Future<BaseResponse<AuthResponseModel>> signUp({
    required SignUpEntity signUpEntity,
  });
}
