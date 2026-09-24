import 'dart:io';

import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/constants/app_strings.dart';
import 'package:examy/app/routing/app_routes.dart';
import 'package:examy/core/di/injection.dart';
import 'package:examy/core/widgets/app_back_header.dart';
import 'package:examy/core/widgets/app_button.dart';
import 'package:examy/feature/profile/domain/use_cases/get_profile_photo_use_case.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_event.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_state.dart';
import 'package:examy/feature/profile/presentation/view_model/profile_view_model.dart';
import 'package:examy/feature/profile/presentation/views/widgets/profile_avatar.dart';
import 'package:examy/feature/profile/presentation/views/widgets/profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => ProfileViewBodyState();
}

class ProfileViewBodyState extends State<ProfileViewBody> {
  final _usernameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  String? _photoPath;

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

  void _listener(BuildContext context, ProfileState state) {
    final profile = state.profileState.data;

    if (profile == null) return;

    _usernameController.text = profile.username;
    _firstNameController.text = profile.firstName;
    _lastNameController.text = profile.lastName;
    _emailController.text = profile.email;
    _phoneController.text = profile.phone;
    _passwordController.text = '********';

    _loadLocalPhoto(profile.id);
  }

  Future<void> _loadLocalPhoto(String userId) async {
    final path = await getIt<GetProfilePhotoUseCase>()(userId);
    if (!mounted) return;

    if (path != null) {
      // The copied file is overwritten in place, so evict any cached image
      // for this path before rebuilding.
      await FileImage(File(path)).evict();
      if (!mounted) return;
    }

    setState(() => _photoPath = path);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileViewModel, ProfileState>(
      listener: _listener,
      buildWhen: (previous, current) =>
          previous.profileState != current.profileState,
      builder: (context, state) => _buildBody(state),
    );
  }

  Widget _buildBody(ProfileState state) {
    if (state.profileState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final errorMessage = state.profileState.errorMessage;

    if (errorMessage.isNotEmpty) {
      return Center(
        child: Text(errorMessage),
      );
    }

    return _buildContent(context, state);
  }

  Widget _buildContent(BuildContext context, ProfileState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.screenHorizontal,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.appParSpace),
            const AppBackHeader(title: AppStrings.profile),
            const SizedBox(height: AppSpacing.sectionGap),
            Center(
              child: ProfileAvatar(
                imageFile:
                    _photoPath != null ? File(_photoPath!) : null,
              ),
            ),
            const SizedBox(height: AppSpacing.buttonTopGap),
            _buildProfileForm(),
            const SizedBox(height: AppSpacing.buttonTopGap),
            _buildUpdateButton(context),
            const SizedBox(height: AppSpacing.sectionGap),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileForm() {
    return ProfileForm(
      enabled: false,
      usernameController: _usernameController,
      firstNameController: _firstNameController,
      lastNameController: _lastNameController,
      emailController: _emailController,
      passwordController: _passwordController,
      phoneController: _phoneController,
    );
  }

  Widget _buildUpdateButton(BuildContext context) {
    return AppButton(
      text: AppStrings.update,
      onPressed: () async {
        final updated = await context.pushNamed<bool>(
          AppRoutes.profileEdit,
        );
        if (updated == true && context.mounted) {
          final viewModel = context.read<ProfileViewModel>();
          viewModel.doEvent(GetProfileEvent());
          final userId = viewModel.state.profileState.data?.id;
          if (userId != null) _loadLocalPhoto(userId);
        }
      },
    );
  }
}
