import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../helper/get_active_color.dart';
import '../../helper/on_finish_0nboarding.dart';
import 'page_view_item.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
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
        borderColor: Colors.transparent,
        backgroundColor: getActiveColor(currentPageIndex: currentPageIndex),
        borderRadius: 15,
        verticalPadding: 0,
        buttonHeight: 45,
        textStyle: AppStyles.bold18.copyWith(color: Colors.white),
        onPressed: currentPageIndex < pages.length - 1
            ? onPressed
            : () {
                onFinishOnboarding(context);
              },
        child: Text(
          currentPageIndex < pages.length - 1 ? "Next" : "Get Started",
          style: AppStyles.medium18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
