import 'package:examy/core/constants/app_spacing.dart';
import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/resources/app_text_styles.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:flutter/material.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key, required this.subject, required this.onTap});

  final SubjectEntity subject;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.fieldGap),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.fieldGap,
          vertical: AppSpacing.fieldGap,
        ),
        decoration: BoxDecoration(
          color: AppPalette.white,
          border: Border.all(color: AppPalette.border),
          borderRadius: BorderRadius.circular(AppSpacing.fieldGap),
        ),
        child: Row(
          children: [
            Image.network(
              subject.icon,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) {
                return const SizedBox.shrink();
              },
            ),
            const SizedBox(width: AppSpacing.fieldGap),
            Expanded(
              child: Text(
                subject.name,
                style: AppTextStyles.styleRegular14(
                  color: AppPalette.primaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
