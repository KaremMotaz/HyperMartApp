import 'package:flutter/material.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  final String text;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: text,
      onPressed: onPressed,
      buttonWidth: 45,
      buttonHeight: 45,
      horizontalPadding: 0,
      verticalPadding: 0,
      backgroundColor: color,
      borderColor: color,
      textStyle: AppStyles.extraBold22.copyWith(color: AppColors.white),
    );
  }
}
