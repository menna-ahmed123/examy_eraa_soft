import 'package:dio/dio.dart';
import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/auth/api/client/auth_api_client.dart';
import 'package:examy/feature/auth/data/data_sources/remote/auth_remote_data_source_impl.dart';
import 'package:examy/feature/auth/data/models/auth_response_model.dart';
import 'package:examy/feature/auth/data/models/user_model.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([AuthApiClient])
void main() {
  late MockAuthApiClient mockAuthApiClient;
  late AuthRemoteDataSourceImpl authRemoteDataSourceImpl;

  setUp(() {
    mockAuthApiClient = MockAuthApiClient();

    authRemoteDataSourceImpl = AuthRemoteDataSourceImpl(
      authApiClient: mockAuthApiClient,
    );
  });

  final authResponseModel = AuthResponseModel(    message: 'ok',
    token: 'token123',
    user: UserModel(
      id: 'id1',
      username: 'johndoe',
      firstName: 'John',
      lastName: 'Doe',
      email: 'john@test.com',
      phone: '01000000000',
      role: 'Student',
      isVerified: true,
      createdAt: '2024-01-01',
    ),
  );

  const signUpEntity = SignUpEntity(
    username: 'johndoe',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@test.com',
    password: 'password123',
    rePassword: 'password123',
    phone: '01000000000',
  );

  group('login', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockAuthApiClient.login(any),
      ).thenAnswer((_) async => authResponseModel);

      // Act
      final result = await authRemoteDataSourceImpl.login(
        email: 'john@test.com',
        password: 'password123',
      );

      // Assert
      expect(result, isA<SuccessResponse<AuthResponseModel>>());
      final success = result as SuccessResponse<AuthResponseModel>;
      expect(success.data, authResponseModel);
    });

    test('returns ErrorResponse when api client throws DioException',
        () async {
      // Arrange
      final error = DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'login failed',
      );

      when(mockAuthApiClient.login(any)).thenThrow(error);

      // Act
      final result = await authRemoteDataSourceImpl.login(
        email: 'john@test.com',
        password: 'password123',
      );

      // Assert
      expect(result, isA<ErrorResponse<AuthResponseModel>>());
    });
  });

  group('signUp', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockAuthApiClient.signUp(any),
      ).thenAnswer((_) async => authResponseModel);

      // Act
      final result = await authRemoteDataSourceImpl.signUp(
        signUpEntity: signUpEntity,
      );

      // Assert
      expect(result, isA<SuccessResponse<AuthResponseModel>>());
      final success = result as SuccessResponse<AuthResponseModel>;
      expect(success.data, authResponseModel);
    });

    test('returns ErrorResponse when api client throws DioException',
        () async {
      // Arrange
      final error = DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'signup failed',
      );

      when(mockAuthApiClient.signUp(any)).thenThrow(error);

      // Act
      final result = await authRemoteDataSourceImpl.signUp(
        signUpEntity: signUpEntity,
      );

      // Assert
      expect(result, isA<ErrorResponse<AuthResponseModel>>());
    });
  });
}
