import 'package:dio/dio.dart';
import 'package:examy/core/api_constants.dart';
import 'package:examy/core/networking/api_error_handler.dart';
import 'package:examy/core/networking/api_result.dart';
import 'package:examy/core/networking/dio_factory.dart';
import 'package:examy/feature/register/data/models/register_request_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterRepo {
  final Dio _dio;
  RegisterRepo(this._dio);

  Future<ApiResult<dynamic>> register(RegisterRequestModel registerModel) async {
    try {
      final response = await _dio.post(
        ApiConstants.signup,
        data: registerModel.toJson(),
      );

      final token = response.data['token'];
      await _saveToken(token);
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
