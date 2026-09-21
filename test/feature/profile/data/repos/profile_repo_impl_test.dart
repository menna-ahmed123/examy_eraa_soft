import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/core/storage/secure_storage_service.dart';
import 'package:examy/feature/profile/data/data_sources/remote/profile_remote_data_source.dart';
import 'package:examy/feature/profile/data/models/change_password_response_model.dart';
import 'package:examy/feature/profile/data/models/profile_model.dart';
import 'package:examy/feature/profile/data/models/profile_response_model.dart';
import 'package:examy/feature/profile/data/repos/profile_repo_impl.dart';
import 'package:examy/feature/profile/domain/entities/change_password_entity.dart';
import 'package:examy/feature/profile/domain/entities/change_password_params.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/entities/update_profile_params.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_repo_impl_test.mocks.dart';

@GenerateMocks([ProfileRemoteDataSource, SecureStorageService])
void main() {
  late MockProfileRemoteDataSource mockRemoteDataSource;
  late MockSecureStorageService mockSecureStorageService;
  late ProfileRepoImpl repo;

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

  final response = ProfileResponseModel(message: 'ok', user: profileModel);

  const updateParams = UpdateProfileParams(
    username: 'johndoe',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@test.com',
    phone: '01000000000',
  );

  const changePasswordParams = ChangePasswordParams(
    oldPassword: 'old123456',
    password: 'new123456',
    rePassword: 'new123456',
  );

  final changePasswordResponse = ChangePasswordResponseModel(
    message: 'ok',
    token: 'token123',
  );

  provideDummy<BaseResponse<ProfileResponseModel>>(
    SuccessResponse<ProfileResponseModel>(response),
  );
  provideDummy<BaseResponse<ChangePasswordResponseModel>>(
    SuccessResponse<ChangePasswordResponseModel>(changePasswordResponse),
  );

  setUp(() {
    mockRemoteDataSource = MockProfileRemoteDataSource();
    mockSecureStorageService = MockSecureStorageService();
    repo = ProfileRepoImpl(
      profileRemoteDataSource: mockRemoteDataSource,
      secureStorageService: mockSecureStorageService,
    );
  });

  group('getProfile', () {
    test('returns SuccessResponse mapped to ProfileEntity', () async {
      // Arrange
      when(mockRemoteDataSource.getProfile()).thenAnswer(
        (_) async => SuccessResponse<ProfileResponseModel>(response),
      );

      // Act
      final result = await repo.getProfile();

      // Assert
      expect(result, isA<SuccessResponse<ProfileEntity>>());
      final data = (result as SuccessResponse<ProfileEntity>).data;
      expect(data.id, 'id1');
      expect(data.username, 'johndoe');
      expect(data.email, 'john@test.com');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(mockRemoteDataSource.getProfile()).thenAnswer(
        (_) async => ErrorResponse<ProfileResponseModel>(
          errorMessage: 'get profile failed',
        ),
      );

      // Act
      final result = await repo.getProfile();

      // Assert
      expect(result, isA<ErrorResponse<ProfileEntity>>());
    });
  });

  group('updateProfile', () {
    test('returns SuccessResponse mapped to ProfileEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.updateProfile(body: anyNamed('body')),
      ).thenAnswer((_) async => SuccessResponse<ProfileResponseModel>(
        response,
      ));

      // Act
      final result = await repo.updateProfile(params: updateParams);

      // Assert
      expect(result, isA<SuccessResponse<ProfileEntity>>());
      final success = result as SuccessResponse<ProfileEntity>;
      expect(success.data.username, response.user.username);
      expect(success.data.firstName, response.user.firstName);
      expect(success.data.lastName, response.user.lastName);
      expect(success.data.email, response.user.email);
      expect(success.data.phone, response.user.phone);
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.updateProfile(body: anyNamed('body')),
      ).thenAnswer((_) async => ErrorResponse<ProfileResponseModel>(
        errorMessage: 'update profile failed',
      ));

      // Act
      final result = await repo.updateProfile(params: updateParams);

      // Assert
      expect(result, isA<ErrorResponse<ProfileEntity>>());
    });
  });

  group('changePassword', () {
    test('returns SuccessResponse and saves token when successful', () async {
      // Arrange
      when(
        mockRemoteDataSource.changePassword(body: anyNamed('body')),
      ).thenAnswer((_) async => SuccessResponse<ChangePasswordResponseModel>(
        changePasswordResponse,
      ));
      when(
        mockSecureStorageService.saveToken(any),
      ).thenAnswer((_) async {});

      // Act
      final result = await repo.changePassword(changePasswordParams);

      // Assert
      expect(result, isA<SuccessResponse<ChangePasswordEntity>>());
      final success = result as SuccessResponse<ChangePasswordEntity>;
      expect(success.data.token, 'token123');
      verify(mockSecureStorageService.saveToken('token123')).called(1);
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.changePassword(body: anyNamed('body')),
      ).thenAnswer((_) async => ErrorResponse<ChangePasswordResponseModel>(
        errorMessage: 'change password failed',
      ));

      // Act
      final result = await repo.changePassword(changePasswordParams);

      // Assert
      expect(result, isA<ErrorResponse<ChangePasswordEntity>>());
      verifyNever(mockSecureStorageService.saveToken(any));
    });
  });
}
