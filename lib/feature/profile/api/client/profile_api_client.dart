import 'package:dio/dio.dart';
import 'package:examy/core/networking/api_constants.dart';
import 'package:examy/feature/profile/data/models/change_password_request_model.dart';
import 'package:examy/feature/profile/data/models/change_password_response_model.dart';
import 'package:examy/feature/profile/data/models/profile_response_model.dart';
import 'package:examy/feature/profile/data/models/update_profile_request_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProfileApiClient {
  final Dio _dio;

  ProfileApiClient(this._dio);

  Future<ProfileResponseModel> getProfile() async {
    final response = await _dio.get(ApiConstants.profileDataEndpoint);
    return ProfileResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<ProfileResponseModel> updateProfile({
    required UpdateProfileRequestModel body,
  }) async {
    final response = await _dio.put(
      ApiConstants.updateProfileEndpoint,
      data: body.toJson(),
    );
    return ProfileResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<ChangePasswordResponseModel> changePassword({
    required ChangePasswordRequestModel body,
  }) async {
    final response = await _dio.patch(
      ApiConstants.changePasswordEndpoint,
      data: body.toJson(),
    );
    return ChangePasswordResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
