import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'page_view_item.dart';

class OnboardingBackButton extends StatelessWidget {
  const OnboardingBackButton({
    super.key,
    required this.currentPageIndex,
    required this.pages,
    required this.onPressed,
  });

  final int currentPageIndex;
  final List<PageViewItem> pages;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextButton(
        borderColor: Colors.grey.shade400,
        backgroundColor: AppColors.white,
        borderRadius: 15,
        verticalPadding: 0,
        buttonHeight: 45,
        onPressed: onPressed,
        child: Text(
          "Back",
          style: AppStyles.medium18.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
