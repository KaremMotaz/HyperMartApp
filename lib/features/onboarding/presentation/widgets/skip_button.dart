import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/onboarding/helper/on_finish_0nboarding.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/page_view_item.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.currentPageIndex,
    required this.pages,
  });

  final int currentPageIndex;
  final List<PageViewItem> pages;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPageIndex < pages.length - 1,
      maintainState: true,
      maintainAnimation: true,
      maintainSize: true,
      child: AppTextButton(
        onPressed: () {
          onFinishOnboarding(context);
        },
        borderColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        verticalPadding: 5,
        buttonHeight: 20,
        child: Text(
          "Skip",
          style: AppStyles.bold16.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
