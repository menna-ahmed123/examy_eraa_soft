import 'package:dio/dio.dart';
import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/core/networking/error_handler.dart';
import 'package:examy/feature/auth/api/client/auth_api_client.dart';
import 'package:examy/feature/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:examy/feature/auth/data/models/login_request_model.dart';
import 'package:examy/feature/auth/data/models/auth_response_model.dart';
import 'package:examy/feature/auth/data/models/sign_up_request_model.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiClient authApiClient;

  AuthRemoteDataSourceImpl({required this.authApiClient});

  @override
  Future<BaseResponse<AuthResponseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final AuthResponseModel loginResponseModel = await authApiClient.login(
        LoginRequestModel(email: email, password: password),
      );
      return SuccessResponse<AuthResponseModel>(loginResponseModel);
    } on DioException catch (e) {
      final serverMessage = _extractServerMessage(e.response?.data);
      final errorMessage = serverMessage ?? ErrorHandler.fromDioException(e);
      return ErrorResponse<AuthResponseModel>(
        error: e,
        errorMessage: errorMessage,
      );
    } on Exception catch (e) {
      return ErrorResponse<AuthResponseModel>(error: e);
    } catch (e) {
      return ErrorResponse<AuthResponseModel>(
        error: Exception(e.toString()),
      );
    }
  }

  @override
  Future<BaseResponse<AuthResponseModel>> signUp({
    required SignUpEntity signUpEntity,
  }) async {
    try {
      final AuthResponseModel authResponseModel = await authApiClient.signUp(
        SignUpRequestModel.fromDomain(signUpEntity),
      );
      return SuccessResponse<AuthResponseModel>(authResponseModel);
    } on DioException catch (e) {
      final serverMessage = _extractServerMessage(e.response?.data);
      final errorMessage = serverMessage ?? ErrorHandler.fromDioException(e);
      return ErrorResponse<AuthResponseModel>(
        error: e,
        errorMessage: errorMessage,
      );
    } on Exception catch (e) {
      return ErrorResponse<AuthResponseModel>(error: e);
    } catch (e) {
      return ErrorResponse<AuthResponseModel>(
        error: Exception(e.toString()),
      );
    }
  }

  String? _extractServerMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      final message = data['message'];
      if (message is String && message.isNotEmpty) {
        return message;
      }
    }
    return null;
  }
}
