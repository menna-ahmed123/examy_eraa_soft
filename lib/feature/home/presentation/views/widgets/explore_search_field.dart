import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/constants/app_strings.dart';
import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/resources/app_text_styles.dart';
import 'package:examy/feature/home/presentation/view_model/explore_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreSearchField extends StatelessWidget {
  const ExploreSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: context.read<ExploreViewModel>().searchSubjects,
      style: AppTextStyles.styleRegular14(color: AppPalette.primaryText),
      decoration: InputDecoration(
        hintText: AppStrings.search,
        hintStyle: AppTextStyles.styleRegular14(color: AppPalette.hintText),
        prefixIcon: const Icon(Icons.search, color: AppPalette.hintText),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.fieldGap,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppPalette.inputBorder),
          borderRadius: BorderRadius.circular(AppSpacing.fieldGap),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppPalette.primaryBlue),
          borderRadius: BorderRadius.circular(AppSpacing.fieldGap),
        ),
      ),
    );
  }
}
