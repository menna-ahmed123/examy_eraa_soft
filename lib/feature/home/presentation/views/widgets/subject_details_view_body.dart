import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/resources/app_text_styles.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_state.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SubjectDetailsViewBody extends StatelessWidget {
  const SubjectDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectDetailsViewModel, SubjectDetailsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage.isNotEmpty) {
          return Center(child: Text(state.errorMessage));
        }

        final subject = state.subject;

        if (subject == null) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.all(AppSpacing.screenHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBackButton(context),
              const Spacer(),
              _buildSubjectIcon(subject.icon),
              const SizedBox(height: AppSpacing.sectionGap),
              _buildSubjectName(subject.name),
              const Spacer(),
              _buildStartExamButton(context),
              const SizedBox(height: AppSpacing.sectionGap),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return GestureDetector(
      onTap: context.pop,
      child: const Icon(
        Icons.arrow_back_ios_new,
        color: AppPalette.primaryText,
      ),
    );
  }

  Widget _buildSubjectIcon(String icon) {
    return Center(
      child: Image.network(icon, width: 100, height: 100, fit: BoxFit.contain),
    );
  }

  Widget _buildSubjectName(String name) {
    return Center(
      child: Text(
        name,
        style: AppTextStyles.styleSemiBold24(color: AppPalette.primaryText),
      ),
    );
  }

  Widget _buildStartExamButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // TODO: أضف التنقل لصفحة الامتحان هنا
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPalette.primaryBlue, // أو اللون المعتمد في تطبيقك
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Start Exam',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
