import 'package:examy/core/resources/app_palette.dart';
import 'package:examy/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppPalette.primaryBlue,
          side: const BorderSide(color: AppPalette.primaryBlue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: AppTextStyles.styleMedium16(color: AppPalette.primaryBlue),
        ),
        child: Text(text),
      ),
    );
  }
}
