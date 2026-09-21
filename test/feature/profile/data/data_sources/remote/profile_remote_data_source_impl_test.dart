import 'package:dio/dio.dart';
import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/api/client/profile_api_client.dart';
import 'package:examy/feature/profile/data/data_sources/remote/profile_remote_data_source_impl.dart';
import 'package:examy/feature/profile/data/models/change_password_request_model.dart';
import 'package:examy/feature/profile/data/models/change_password_response_model.dart';
import 'package:examy/feature/profile/data/models/profile_model.dart';
import 'package:examy/feature/profile/data/models/profile_response_model.dart';
import 'package:examy/feature/profile/data/models/update_profile_request_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([ProfileApiClient])
void main() {
  late MockProfileApiClient mockProfileApiClient;
  late ProfileRemoteDataSourceImpl profileRemoteDataSourceImpl;

  setUp(() {
    mockProfileApiClient = MockProfileApiClient();

    profileRemoteDataSourceImpl = ProfileRemoteDataSourceImpl(
      profileApiClient: mockProfileApiClient,
    );
  });

  final profileModel = ProfileModel(
    id: 'id1',
    username: 'johndoe',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@test.com',
    phone: '01000000000',
    role: 'Student',
    isVerified: true,
    createdAt: '2024-01-01',
  );

  final profileResponseModel = ProfileResponseModel(
    message: 'ok',
    user: profileModel,
  );

  final updateBody = UpdateProfileRequestModel(
    username: 'johndoe',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@test.com',
    phone: '01000000000',
  );

  final changePasswordBody = ChangePasswordRequestModel(
    oldPassword: 'old123456',
    password: 'new123456',
    rePassword: 'new123456',
  );

  final changePasswordResponseModel = ChangePasswordResponseModel(
    message: 'ok',
    token: 'token123',
  );

  group('getProfile', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockProfileApiClient.getProfile(),
      ).thenAnswer((_) async => profileResponseModel);

      // Act
      final result = await profileRemoteDataSourceImpl.getProfile();

      // Assert
      expect(result, isA<SuccessResponse<ProfileResponseModel>>());
      final success = result as SuccessResponse<ProfileResponseModel>;
      expect(success.data, profileResponseModel);
    });

    test('returns ErrorResponse when api client throws DioException',
        () async {
      // Arrange
      final error = DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'get profile failed',
      );

      when(mockProfileApiClient.getProfile()).thenThrow(error);

      // Act
      final result = await profileRemoteDataSourceImpl.getProfile();

      // Assert
      expect(result, isA<ErrorResponse<ProfileResponseModel>>());
    });
  });

  group('updateProfile', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockProfileApiClient.updateProfile(body: updateBody),
      ).thenAnswer((_) async => profileResponseModel);

      // Act
      final result = await profileRemoteDataSourceImpl.updateProfile(
        body: updateBody,
      );

      // Assert
      expect(result, isA<SuccessResponse<ProfileResponseModel>>());
      final success = result as SuccessResponse<ProfileResponseModel>;
      expect(success.data, profileResponseModel);
    });

    test('returns ErrorResponse when api client throws DioException',
        () async {
      // Arrange
      final error = DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'update profile failed',
      );

      when(mockProfileApiClient.updateProfile(body: updateBody)).thenThrow(
        error,
      );

      // Act
      final result = await profileRemoteDataSourceImpl.updateProfile(
        body: updateBody,
      );

      // Assert
      expect(result, isA<ErrorResponse<ProfileResponseModel>>());
    });
  });

  group('changePassword', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockProfileApiClient.changePassword(body: changePasswordBody),
      ).thenAnswer((_) async => changePasswordResponseModel);

      // Act
      final result = await profileRemoteDataSourceImpl.changePassword(
        body: changePasswordBody,
      );

      // Assert
      expect(result, isA<SuccessResponse<ChangePasswordResponseModel>>());
      final success = result as SuccessResponse<ChangePasswordResponseModel>;
      expect(success.data, changePasswordResponseModel);
    });

    test('returns ErrorResponse when api client throws DioException',
        () async {
      // Arrange
      final error = DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'change password failed',
      );

      when(
        mockProfileApiClient.changePassword(body: changePasswordBody),
      ).thenThrow(error);

      // Act
      final result = await profileRemoteDataSourceImpl.changePassword(
        body: changePasswordBody,
      );

      // Assert
      expect(result, isA<ErrorResponse<ChangePasswordResponseModel>>());
    });
  });
}
