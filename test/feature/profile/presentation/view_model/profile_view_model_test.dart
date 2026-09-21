import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/change_password_entity.dart';
import 'package:examy/feature/profile/domain/entities/change_password_params.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/entities/update_profile_params.dart';
import 'package:examy/feature/profile/domain/use_cases/change_passoword_use_case.dart';
import 'package:examy/feature/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:examy/feature/profile/domain/use_cases/update_profile_use_case.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_event.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_state.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_view_model_test.mocks.dart';

@GenerateMocks([
  GetProfileUseCase,
  UpdateProfileUseCase,
  ChangePasswordUseCase,
])
void main() {
  late MockGetProfileUseCase mockGetProfileUseCase;
  late MockUpdateProfileUseCase mockUpdateProfileUseCase;
  late MockChangePasswordUseCase mockChangePasswordUseCase;
  late ProfileViewModel profileViewModel;

  setUp(() {
    mockGetProfileUseCase = MockGetProfileUseCase();
    mockUpdateProfileUseCase = MockUpdateProfileUseCase();
    mockChangePasswordUseCase = MockChangePasswordUseCase();

    profileViewModel = ProfileViewModel(
      mockGetProfileUseCase,
      mockUpdateProfileUseCase,
      mockChangePasswordUseCase,
    );
  });

  final dummyProfile = ProfileEntity(
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

  final dummySuccessResponse = SuccessResponse<ProfileEntity>(dummyProfile);

  const dummyChangePasswordEntity = ChangePasswordEntity(token: 'token123');

  final dummyChangePasswordSuccessResponse =
      SuccessResponse<ChangePasswordEntity>(dummyChangePasswordEntity);

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

  provideDummy<BaseResponse<ProfileEntity>>(dummySuccessResponse);
  provideDummy<BaseResponse<ChangePasswordEntity>>(
    dummyChangePasswordSuccessResponse,
  );

  group('GetProfile', () {
    test('should get profile successfully', () async {
      // Arrange
      when(
        mockGetProfileUseCase(),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.profileState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.profileState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.profileState.data,
                'data',
                dummyProfile,
              )
              .having(
                (state) => state.profileState.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(GetProfileEvent());

      // Assert
      await future;

      verify(mockGetProfileUseCase()).called(1);
    });

    test('should return error when get profile fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<ProfileEntity>(
        errorMessage: 'get profile failed',
      );

      when(mockGetProfileUseCase()).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.profileState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.profileState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.profileState.errorMessage,
                'errorMessage',
                'get profile failed',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(GetProfileEvent());

      // Assert
      await future;

      verify(mockGetProfileUseCase()).called(1);
    });
  });

  group('UpdateProfile', () {
    test('should update profile successfully', () async {
      // Arrange
      when(
        mockUpdateProfileUseCase(params: updateParams),
      ).thenAnswer((_) async => dummySuccessResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.updateProfileState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.updateProfileState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.updateProfileState.data,
                'data',
                dummyProfile,
              )
              .having(
                (state) => state.updateProfileState.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(UpdateProfileEvent(params: updateParams));

      // Assert
      await future;

      verify(mockUpdateProfileUseCase(params: updateParams)).called(1);
    });

    test('should return error when update profile fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<ProfileEntity>(
        errorMessage: 'update profile failed',
      );

      when(
        mockUpdateProfileUseCase(params: updateParams),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.updateProfileState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.updateProfileState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.updateProfileState.errorMessage,
                'errorMessage',
                'update profile failed',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(UpdateProfileEvent(params: updateParams));

      // Assert
      await future;

      verify(mockUpdateProfileUseCase(params: updateParams)).called(1);
    });
  });

  group('ChangePassword', () {
    test('should change password successfully', () async {
      // Arrange
      when(
        mockChangePasswordUseCase(changePasswordParams),
      ).thenAnswer((_) async => dummyChangePasswordSuccessResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.changePasswordState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.changePasswordState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.changePasswordState.data,
                'data',
                dummyChangePasswordEntity,
              )
              .having(
                (state) => state.changePasswordState.errorMessage,
                'errorMessage',
                '',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(
        ChangePasswordEvent(params: changePasswordParams),
      );

      // Assert
      await future;

      verify(mockChangePasswordUseCase(changePasswordParams)).called(1);
    });

    test('should return error when change password fails', () async {
      // Arrange
      final errorResponse = ErrorResponse<ChangePasswordEntity>(
        errorMessage: 'change password failed',
      );

      when(
        mockChangePasswordUseCase(changePasswordParams),
      ).thenAnswer((_) async => errorResponse);

      final future = expectLater(
        profileViewModel.stream,
        emitsInOrder([
          isA<ProfileState>().having(
            (state) => state.changePasswordState.isLoading,
            'isLoading',
            true,
          ),
          isA<ProfileState>()
              .having(
                (state) => state.changePasswordState.isLoading,
                'isLoading',
                false,
              )
              .having(
                (state) => state.changePasswordState.errorMessage,
                'errorMessage',
                'change password failed',
              ),
        ]),
      );

      // Act
      profileViewModel.doEvent(
        ChangePasswordEvent(params: changePasswordParams),
      );

      // Assert
      await future;

      verify(mockChangePasswordUseCase(changePasswordParams)).called(1);
    });
  });
}
