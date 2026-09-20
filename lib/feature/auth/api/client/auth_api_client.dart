import 'package:dio/dio.dart';
import 'package:examy/core/networking/api_constants.dart';
import 'package:examy/feature/auth/data/models/auth_response_model.dart';
import 'package:examy/feature/auth/data/models/login_request_model.dart';
import 'package:examy/feature/auth/data/models/sign_up_request_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthApiClient {
  final Dio _dio;

  AuthApiClient(this._dio);

  Future<AuthResponseModel> login(LoginRequestModel request) async {
    final response = await _dio.post(
      ApiConstants.loginEndpoint,
      data: request.toJson(),
    );
    return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<AuthResponseModel> signUp(SignUpRequestModel request) async {
    final response = await _dio.post(
      ApiConstants.signUpEndpoint,
      data: request.toJson(),
    );
    return AuthResponseModel.fromJson(response.data as Map<String, dynamic>);
  }
}
