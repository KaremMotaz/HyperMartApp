import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/page_view_item.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
    required this.currentPageIndex,
    required this.pages,
    required this.onPressed,
    required this.onFinishPressed,
  });

  final int currentPageIndex;
  final List<PageViewItem> pages;
  final VoidCallback onPressed;
  final VoidCallback onFinishPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextButton(
        borderColor: Colors.transparent,
        backgroundColor: AppColors.turquoise,
        borderRadius: 15,
        verticalPadding: 0,
        buttonHeight: 45,
        textStyle: AppStyles.bold18.copyWith(color: Colors.white),
        onPressed: currentPageIndex < pages.length - 1
            ? onPressed
            : onFinishPressed,
        child: Text(
          currentPageIndex < pages.length - 1 ? "Next" : "Get Started",
          style: AppStyles.medium18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
