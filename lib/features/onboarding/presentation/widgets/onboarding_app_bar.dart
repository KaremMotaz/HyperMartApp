import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/onboarding/helper/get_active_color.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/custom_progress_dots.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/page_view_item.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/skip_button.dart';

class OnboardingAppBar extends StatelessWidget {
  const OnboardingAppBar({
    super.key,
    required this.currentPageIndex,
    required this.pages,
    required this.onFinishPressed,
    required this.screenWidth,
    required this.dotWidth,
    required this.spacing,
  });

  final int currentPageIndex;
  final List<PageViewItem> pages;
  final VoidCallback onFinishPressed;
  final double screenWidth;
  final double dotWidth;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.logo, width: 50),
                Text(
                  "HyperMart",
                  style: AppStyles.bold18.copyWith(color: Colors.grey),
                ),
              ],
            ),
            SkipButton(
              currentPageIndex: currentPageIndex,
              pages: pages,
              onFinishPressed: onFinishPressed,
            ),
          ],
        ),
        const SizedBox(height: 10),
        CustomProgressDots(
          pagesCount: pages.length,
          currentPageIndex: currentPageIndex,
          activeColor: getActiveColor(currentPageIndex: currentPageIndex),
          inactiveColor: AppColors.lightGrey,
          dotWidth: dotWidth,
        ),
      ],
    );
  }
}
