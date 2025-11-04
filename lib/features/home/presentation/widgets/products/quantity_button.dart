import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.isLoading,
    this.size,
  });

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double? size;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: AppTextButton(
        onPressed: onPressed,
        buttonWidth: size ?? 45,
        buttonHeight: size ?? 45,
        horizontalPadding: 0,
        verticalPadding: 0,
        backgroundColor: color,
        borderColor: color,
        child: isLoading
            ? const CustomCircularProgressIndicator(
                color: AppColors.white,
                size: 10,
              )
            : Text(
                text,
                style: AppStyles.extraBold22.copyWith(color: AppColors.white),
              ),
      ),
    );
  }
}
