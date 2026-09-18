import 'package:dio/dio.dart';
import 'package:examy/core/api_constants.dart';
import 'package:examy/core/networking/api_error_handler.dart';
import 'package:examy/core/networking/api_result.dart';
import 'package:examy/core/networking/dio_factory.dart';
import 'package:examy/feature/login/data/models/login_request_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginRepo {
  final Dio _dio;
  LoginRepo(this._dio);

  Future<ApiResult<dynamic>> login(LoginRequestModel loginModel) async {
    try {
      final response = await _dio.post(
        ApiConstants.signin,
        data: loginModel.toJson(),
      );
      final token = response.data['token'];
      await _saveToken(token);
      // so authenticated endpoints send the token automatically from now on
      DioFactory.setTokenIntoHeaderAfterLogin(token);
      return Success(response.data['message']);
    } on DioException catch (e) {
      return Error(ApiErrorHandler.handle(e).message);
    }
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
