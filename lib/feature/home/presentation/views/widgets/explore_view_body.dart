import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/constants/app_strings.dart';
import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/resources/app_text_styles.dart';
import 'package:examy/app/routing/app_routes.dart';
import 'package:examy/feature/home/presentation/view_model/explore_state.dart';
import 'package:examy/feature/home/presentation/view_model/explore_view_model.dart';
import 'package:examy/feature/home/presentation/views/widgets/explore_search_field.dart';
import 'package:examy/feature/home/presentation/views/widgets/subject_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.screenHorizontal,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.appParSpace),
            Text(
              AppStrings.explore,
              style: AppTextStyles.styleSemiBold24(
                color: AppPalette.primaryText,
              ),
            ),
            const SizedBox(height: AppSpacing.sectionGap),
            const ExploreSearchField(),
            const SizedBox(height: AppSpacing.sectionGap),
            Text(
              AppStrings.browseBySubject,
              style: AppTextStyles.styleRegular16(
                color: AppPalette.primaryText,
              ),
            ),
            const SizedBox(height: AppSpacing.fieldGap),
            const Expanded(child: _SubjectsList()),
          ],
        ),
      ),
    );
  }
}

class _SubjectsList extends StatelessWidget {
  const _SubjectsList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreViewModel, ExploreState>(
      builder: (context, state) {
        final subjectsState = state.subjectsState;

        if (subjectsState.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (subjectsState.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              subjectsState.errorMessage,
              textAlign: TextAlign.center,
              style: AppTextStyles.styleRegular14(color: AppPalette.error),
            ),
          );
        }

        final subjects = subjectsState.data?.subjects ?? [];

        if (subjects.isEmpty) {
          return Center(
            child: Text(
              AppStrings.noSubjectsFound,
              style: AppTextStyles.styleRegular14(color: AppPalette.grey),
            ),
          );
        }

        return ListView.separated(
          itemCount: subjects.length,
          separatorBuilder: (_, _) =>
              const SizedBox(height: AppSpacing.fieldGap),
          itemBuilder: (context, index) {
            final subject = subjects[index];

            return SubjectItem(
              subject: subject,
              onTap: () {
                context.pushNamed(
                  AppRoutes.subjectDetailsRoute,
                  pathParameters: {'subjectId': subject.id},
                );
              },
            );
          },
        );
      },
    );
  }
}
