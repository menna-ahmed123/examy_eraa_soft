import 'package:dio/dio.dart';
import 'package:examy/core/networking/api_constants.dart';
import 'package:examy/feature/forgot_password/data/models/forgot_password_request_model.dart';
import 'package:examy/feature/forgot_password/data/models/message_response_model.dart';
import 'package:examy/feature/forgot_password/data/models/reset_password_request_model.dart';
import 'package:examy/feature/forgot_password/data/models/verify_reset_code_request_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ForgotPasswordApiClient {
  final Dio _dio;

  ForgotPasswordApiClient(this._dio);

  Future<MessageResponseModel> forgotPassword(
    ForgotPasswordRequestModel request,
  ) async {
    final response = await _dio.post(
      ApiConstants.forgotPasswordEndpoint,
      data: request.toJson(),
    );
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<MessageResponseModel> verifyResetCode(
    VerifyResetCodeRequestModel request,
  ) async {
    final response = await _dio.post(
      ApiConstants.verifyResetCodeEndpoint,
      data: request.toJson(),
    );
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<MessageResponseModel> resetPassword(
    ResetPasswordRequestModel request,
  ) async {
    final response = await _dio.put(
      ApiConstants.resetPasswordEndpoint,
      data: request.toJson(),
    );
    return MessageResponseModel.fromJson(response.data as Map<String, dynamic>);
  }
}
