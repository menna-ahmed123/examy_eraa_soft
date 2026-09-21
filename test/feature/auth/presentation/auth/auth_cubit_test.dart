import 'package:examy/core/storage/secure_storage_service.dart';
import 'package:examy/core/storage/storage_keys.dart';
import 'package:examy/feature/auth/presentation/auth/auth_cubit.dart';
import 'package:examy/feature/auth/presentation/auth/auth_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_cubit_test.mocks.dart';

@GenerateMocks([SecureStorageService])
void main() {
  late MockSecureStorageService mockSecureStorageService;
  late AuthCubit authCubit;

  setUp(() {
    mockSecureStorageService = MockSecureStorageService();

    authCubit = AuthCubit(mockSecureStorageService);
  });

  group('AuthCubit', () {
    test(
      'should emit authenticated when a token exists',
      () async {
        // Arrange
        when(
          mockSecureStorageService.read(key: anyNamed('key')),
        ).thenAnswer((_) async => 'token123');

        final future = expectLater(
          authCubit.stream,
          emitsInOrder([
            isA<AuthState>().having(
              (state) => state.status,
              'status',
              AuthStatus.authenticated,
            ),
          ]),
        );

        // Act
        await authCubit.checkAuthStatus();

        // Assert
        await future;

        verify(
          mockSecureStorageService.read(key: StorageKeys.accessToken),
        ).called(1);
      },
    );

    test(
      'should emit unauthenticated when no token exists',
      () async {
        // Arrange
        when(
          mockSecureStorageService.read(key: anyNamed('key')),
        ).thenAnswer((_) async => null);

        final future = expectLater(
          authCubit.stream,
          emitsInOrder([
            isA<AuthState>().having(
              (state) => state.status,
              'status',
              AuthStatus.unauthenticated,
            ),
          ]),
        );

        // Act
        await authCubit.checkAuthStatus();

        // Assert
        await future;

        verify(
          mockSecureStorageService.read(key: StorageKeys.accessToken),
        ).called(1);
      },
    );

    test('should emit unauthenticated on logout and delete token', () async {
      // Arrange
      when(
        mockSecureStorageService.delete(key: anyNamed('key')),
      ).thenAnswer((_) async {});

      final future = expectLater(
        authCubit.stream,
        emitsInOrder([
          isA<AuthState>().having(
            (state) => state.status,
            'status',
            AuthStatus.unauthenticated,
          ),
        ]),
      );

      // Act
      await authCubit.logout();

      // Assert
      await future;

      verify(
        mockSecureStorageService.delete(key: StorageKeys.accessToken),
      ).called(1);
    });
  });
}
