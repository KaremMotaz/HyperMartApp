import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/page_view_item.dart';
import 'onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  final int currentPageIndex;
  final PageController pageController;
  final List<PageViewItem> pages;
  final VoidCallback onNextPressed;
  final VoidCallback onFinishPressed;

  const OnboardingViewBody({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
    required this.pages,
    required this.onNextPressed,
    required this.onFinishPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Visibility(
                visible: currentPageIndex == pages.length - 1,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Text.rich(
                    TextSpan(
                      text: "One",
                      style: AppStyles.bold20.copyWith(
                        color: AppColors.turquoise,
                      ),
                      children: [
                        TextSpan(
                          text: "touch",
                          style: AppStyles.semiBold20.copyWith(
                            color: AppColors.turquoise,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              OnboardingPageView(pageController: pageController, pages: pages),
              DotsIndicator(
                dotsCount: pages.length,
                position: currentPageIndex.toDouble(),
                decorator: DotsDecorator(
                  color: AppColors.lightGrey,
                  activeColor: AppColors.turquoise,
                  size: const Size.square(9),
                  activeSize: const Size(22, 9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                animate: true,
              ),
              const SizedBox(height: 15),
              AppTextButton(
                buttonWidth: double.infinity,
                borderColor: Colors.transparent,
                backgroundColor: AppColors.turquoise,
                borderRadius: 50,
                textStyle: AppStyles.bold18.copyWith(color: Colors.white),
                onPressed: currentPageIndex < pages.length - 1
                    ? onNextPressed
                    : onFinishPressed,
                child: Text(
                  currentPageIndex < pages.length - 1 ? "Next" : "Get Started",
                  style: AppStyles.medium18.copyWith(color: Colors.white),
                ),
              ),
              Visibility(
                visible: currentPageIndex < pages.length - 1,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: AppTextButton(
                  onPressed: onFinishPressed,
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  buttonWidth: double.infinity,
                  child: Text(
                    "Skip",
                    style: AppStyles.bold16.copyWith(
                      color: AppColors.turquoise,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
