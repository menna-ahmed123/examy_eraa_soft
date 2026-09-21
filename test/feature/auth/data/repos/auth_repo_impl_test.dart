import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/core/storage/secure_storage_service.dart';
import 'package:examy/feature/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:examy/feature/auth/data/models/auth_response_model.dart';
import 'package:examy/feature/auth/data/models/user_model.dart';
import 'package:examy/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:examy/feature/auth/domain/entities/sign_up_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repo_impl_test.mocks.dart';

@GenerateMocks([AuthRemoteDataSource, SecureStorageService])
void main() {
  late MockAuthRemoteDataSource mockRemoteDataSource;
  late MockSecureStorageService mockSecureStorageService;
  late AuthRepoImpl repo;

  final authResponseModel = AuthResponseModel(
    message: 'ok',
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

  provideDummy<BaseResponse<AuthResponseModel>>(
    SuccessResponse<AuthResponseModel>(authResponseModel),
  );

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    mockSecureStorageService = MockSecureStorageService();
    repo = AuthRepoImpl(
      authRemoteDataSource: mockRemoteDataSource,
      secureStorageService: mockSecureStorageService,
    );
  });

  group('login', () {
    test('returns SuccessResponse and saves token when successful', () async {
      // Arrange
      when(
        mockRemoteDataSource.login(
          email: anyNamed('email'),
          password: anyNamed('password'),
        ),
      ).thenAnswer(
        (_) async => SuccessResponse<AuthResponseModel>(authResponseModel),
      );
      when(
        mockSecureStorageService.saveToken(any),
      ).thenAnswer((_) async {});

      // Act
      final result = await repo.login(
        email: 'john@test.com',
        password: 'password123',
      );

      // Assert
      expect(result, isA<SuccessResponse<AuthResponseEntity>>());
      final success = result as SuccessResponse<AuthResponseEntity>;
      expect(success.data.token, 'token123');
      verify(mockSecureStorageService.saveToken('token123')).called(1);
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.login(
          email: anyNamed('email'),
          password: anyNamed('password'),
        ),
      ).thenAnswer((_) async => ErrorResponse<AuthResponseModel>(
        errorMessage: 'login failed',
      ));

      // Act
      final result = await repo.login(
        email: 'john@test.com',
        password: 'password123',
      );

      // Assert
      expect(result, isA<ErrorResponse<AuthResponseEntity>>());
      verifyNever(mockSecureStorageService.saveToken(any));
    });
  });

  group('signUp', () {
    test('returns SuccessResponse and saves token when successful', () async {
      // Arrange
      when(
        mockRemoteDataSource.signUp(signUpEntity: anyNamed('signUpEntity')),
      ).thenAnswer(
        (_) async => SuccessResponse<AuthResponseModel>(authResponseModel),
      );
      when(
        mockSecureStorageService.saveToken(any),
      ).thenAnswer((_) async {});

      // Act
      final result = await repo.signUp(signUpEntity: signUpEntity);

      // Assert
      expect(result, isA<SuccessResponse<AuthResponseEntity>>());
      final success = result as SuccessResponse<AuthResponseEntity>;
      expect(success.data.token, 'token123');
      verify(mockSecureStorageService.saveToken('token123')).called(1);
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.signUp(signUpEntity: anyNamed('signUpEntity')),
      ).thenAnswer((_) async => ErrorResponse<AuthResponseModel>(
        errorMessage: 'signup failed',
      ));

      // Act
      final result = await repo.signUp(signUpEntity: signUpEntity);

      // Assert
      expect(result, isA<ErrorResponse<AuthResponseEntity>>());
      verifyNever(mockSecureStorageService.saveToken(any));
    });
  });
}
