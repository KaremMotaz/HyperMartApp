import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/custom_dots_indicator.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/onboarding_app_bar.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/onboarding_next_button.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/onboarding_back_button.dart';
import '../widgets/page_view_item.dart';
import 'onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  final int currentPageIndex;
  final PageController pageController;
  final List<PageViewItem> pages;
  final VoidCallback onNextPressed;
  final VoidCallback onBackPressed;
  final VoidCallback onFinishPressed;

  const OnboardingViewBody({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
    required this.pages,
    required this.onNextPressed,
    required this.onBackPressed,
    required this.onFinishPressed,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double spacing = 4.0;
    const double viewPadding = 28;
    final double totalSpacing = spacing * (pages.length - 1);
    final double dotWidth =
        (screenWidth - totalSpacing - viewPadding * 2 - 20) / pages.length;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: viewPadding),
      child: Column(
        children: [
          OnboardingAppBar(
            currentPageIndex: currentPageIndex,
            pages: pages,
            onFinishPressed: onFinishPressed,
            screenWidth: screenWidth,
            dotWidth: dotWidth,
            spacing: spacing,
          ),
          OnboardingPageView(pageController: pageController, pages: pages),
          CustomDotsIndicator(
            pages: pages,
            currentPageIndex: currentPageIndex,
            spacing: spacing,
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              if (currentPageIndex != 0)
                OnboardingBackButton(
                  currentPageIndex: currentPageIndex,
                  pages: pages,
                  onPressed: onBackPressed,
                ),
              const SizedBox(width: 15),
              OnboardingNextButton(
                currentPageIndex: currentPageIndex,
                pages: pages,
                onPressed: onNextPressed,
                onFinishPressed: onFinishPressed,
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
