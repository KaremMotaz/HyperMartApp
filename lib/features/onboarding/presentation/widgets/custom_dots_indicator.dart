import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/page_view_item.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.pages,
    required this.currentPageIndex,
    this.unactivesize,
    this.activesize,
    required this.spacing,
  });

  final List<PageViewItem> pages;
  final int currentPageIndex;
  final Size? activesize;
  final Size? unactivesize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: pages.length,
      position: currentPageIndex.toDouble(),
      decorator: DotsDecorator(
        spacing: EdgeInsets.symmetric(horizontal: spacing),
        color: AppColors.lightGrey,
        activeColor: AppColors.turquoise,
        shape: const StadiumBorder(),
        size: unactivesize ?? const Size.square(9),
        activeSize: activesize ?? const Size(35, 9),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      animate: true,
    );
  }
}
