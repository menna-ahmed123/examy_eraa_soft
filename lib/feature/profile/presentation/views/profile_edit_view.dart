import 'dart:io';

import 'package:examy/app/routing/app_routes.dart';
import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/constants/app_strings.dart';
import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/utils/build_snack_bar.dart';
import 'package:examy/core/widgets/app_back_header.dart';
import 'package:examy/core/widgets/app_button.dart';
import 'package:examy/core/di/injection.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/entities/update_profile_params.dart';
import 'package:examy/feature/profile/domain/use_cases/get_profile_photo_use_case.dart';
import 'package:examy/feature/profile/domain/use_cases/save_profile_photo_use_case.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_event.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_state.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_view_model.dart';
import 'package:examy/feature/profile/presentation/views/widgets/profile_avatar.dart';
import 'package:examy/feature/profile/presentation/views/widgets/profile_form.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileEditView extends StatefulWidget {
  const ProfileEditView({super.key});

  @override
  State<ProfileEditView> createState() => ProfileEditViewState();
}

class ProfileEditViewState extends State<ProfileEditView> {
  final _usernameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  File? _pickedImage;
  String? _photoPath;
  bool _savingPhoto = false;
  bool _didPopAfterUpdate = false;

  @override
  void initState() {
    super.initState();

    context.read<ProfileViewModel>().doEvent(GetProfileEvent());
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _populateControllers(ProfileEntity profile) {
    _usernameController.text = profile.username;
    _firstNameController.text = profile.firstName;
    _lastNameController.text = profile.lastName;
    _emailController.text = profile.email;
    _phoneController.text = profile.phone;
    _passwordController.text = '********';
  }

  void _onChangePasswordPressed() {
    context.pushNamed(AppRoutes.profileChangePassword);
  }

  Future<void> _onUpdatePressed() async {
    if (_savingPhoto) return;

    final profile =
        context.read<ProfileViewModel>().state.profileState.data;

    final params = UpdateProfileParams(
      username: _usernameController.text.trim(),
      firstName: _firstNameController.text.trim(),
      lastName: _lastNameController.text.trim(),
      email: _emailController.text.trim(),
      phone: _phoneController.text.trim(),
    );

    final fieldsChanged =
        profile == null ||
        params.username != profile.username ||
        params.firstName != profile.firstName ||
        params.lastName != profile.lastName ||
        params.email != profile.email ||
        params.phone != profile.phone;

    if (!fieldsChanged) {
      if (_pickedImage == null) {
        if (mounted) context.pop(true);
        return;
      }
      // Photo-only change: skip the API call, persist locally.
      await _savePhotoAndPop(profile.id);
      return;
    }

    context.read<ProfileViewModel>().doEvent(
      UpdateProfileEvent(params: params),
    );
  }

  /// Persists the picked photo locally, then pops with success.
  Future<void> _savePhotoAndPop(String userId) async {
    final picked = _pickedImage;
    if (picked == null) {
      if (mounted) context.pop(true);
      return;
    }

    setState(() => _savingPhoto = true);

    try {
      await getIt<SaveProfilePhotoUseCase>()(
        userId: userId,
        source: picked,
      );
    } catch (_) {
      if (!mounted) return;
      setState(() => _savingPhoto = false);
      buildSnackBar(
        context: context,
        message: AppStrings.photoSaveFailed,
        backgroundColor: AppPalette.error,
      );
      return;
    }

    if (!mounted) return;
    context.pop(true);
  }

  Future<void> _onAvatarTap() async {
    final granted = await _ensureGalleryPermission();
    if (!granted || !mounted) return;

    try {
      final picked = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );
      if (picked == null || !mounted) return;

      setState(() => _pickedImage = File(picked.path));
    } on PlatformException {
      if (!mounted) return;
      buildSnackBar(
        context: context,
        message: AppStrings.photoAccessDenied,
        backgroundColor: AppPalette.error,
      );
    }
  }

  /// Requests gallery access, picking the right permission per platform.
  /// Returns true when the gallery may be opened.
  Future<bool> _ensureGalleryPermission() async {
    final permission = await _galleryPermission();

    var status = await permission.status;
    if (status.isGranted || status.isLimited) return true;

    if (status.isPermanentlyDenied || status.isRestricted) {
      return _openSettingsAndRecheck(permission);
    }

    status = await permission.request();
    if (status.isGranted || status.isLimited) return true;

    if (!mounted) return false;

    if (status.isPermanentlyDenied) {
      return _openSettingsAndRecheck(permission);
    }

    buildSnackBar(
      context: context,
      message: AppStrings.photoAccessDenied,
      backgroundColor: AppPalette.error,
    );
    return false;
  }

  Future<Permission> _galleryPermission() async {
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt >= 33) return Permission.photos;
      return Permission.storage;
    }
    return Permission.photos;
  }

  /// Shows the "open settings" dialog, opens app settings on confirm,
  /// then re-checks the permission once the user returns.
  Future<bool> _openSettingsAndRecheck(Permission permission) async {
    if (!mounted) return false;

    final open = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text(AppStrings.photoPermissionRequired),
        content: const Text(AppStrings.photoPermissionRationale),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text(AppStrings.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text(AppStrings.openSettings),
          ),
        ],
      ),
    );

    if (open != true) return false;

    await openAppSettings();
    if (!mounted) return false;

    final status = await permission.status;
    return status.isGranted || status.isLimited;
  }

  void _listener(BuildContext context, ProfileState state) {
    final profile = state.profileState.data;

    if (profile != null) {
      _populateControllers(profile);
      _loadLocalPhoto(profile.id);
    }

    final updateState = state.updateProfileState;

    if (updateState.errorMessage.isNotEmpty) {
      buildSnackBar(
        context: context,
        message: updateState.errorMessage,
        backgroundColor: AppPalette.error,
      );

      return;
    }

    if (!updateState.isLoading &&
        updateState.data != null &&
        !_didPopAfterUpdate) {
      _didPopAfterUpdate = true;

      final userId = state.profileState.data?.id;
      if (_pickedImage != null && userId != null) {
        _savePhotoAndPop(userId);
      } else {
        context.pop(true);
      }
    }
  }

  Future<void> _loadLocalPhoto(String userId) async {
    if (_photoPath != null || _pickedImage != null) return;

    final path = await getIt<GetProfilePhotoUseCase>()(userId);
    if (!mounted || path == null) return;

    setState(() => _photoPath = path);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileViewModel, ProfileState>(
      listenWhen: (previous, current) =>
          previous.profileState != current.profileState ||
          previous.updateProfileState != current.updateProfileState,
      listener: _listener,
      builder: (context, state) {
        return Scaffold(body: _buildBody(state));
      },
    );
  }

  Widget _buildBody(ProfileState state) {
    if (state.profileState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.profileState.errorMessage.isNotEmpty) {
      return Center(child: Text(state.profileState.errorMessage));
    }

    return _buildContent(
      isLoading:
          state.updateProfileState.isLoading || _savingPhoto,
    );
  }

  Widget _buildContent({required bool isLoading}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.screenHorizontal,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.appParSpace),
            const AppBackHeader(title: AppStrings.editProfile),
            const SizedBox(height: AppSpacing.sectionGap),
            Center(
              child: ProfileAvatar(
                onTap: _onAvatarTap,
                imageFile: _pickedImage ??
                    (_photoPath != null ? File(_photoPath!) : null),
              ),
            ),
            const SizedBox(height: AppSpacing.buttonTopGap),
            _buildProfileForm(),
            const SizedBox(height: AppSpacing.buttonTopGap),
            _buildUpdateButton(isLoading),
            const SizedBox(height: AppSpacing.sectionGap),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileForm() {
    return ProfileForm(
      enabled: true,
      usernameController: _usernameController,
      firstNameController: _firstNameController,
      lastNameController: _lastNameController,
      emailController: _emailController,
      passwordController: _passwordController,
      phoneController: _phoneController,
      onChangePasswordPressed: _onChangePasswordPressed,
    );
  }

  Widget _buildUpdateButton(bool isLoading) {
    return AppButton(
      text: AppStrings.update,
      isLoading: isLoading,
      onPressed: isLoading ? null : _onUpdatePressed,
    );
  }
}
