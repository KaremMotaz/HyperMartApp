import 'package:flutter/material.dart';

class CustomProgressDots extends StatelessWidget {
  final int currentPageIndex;
  final int pagesCount;
  final double spacing;
  final double dotWidth;
  final Color activeColor;
  final Color inactiveColor;

  const CustomProgressDots({
    super.key,
    required this.currentPageIndex,
    required this.pagesCount,
    this.spacing = 6,
    required this.activeColor,
    required this.inactiveColor,
    required this.dotWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pagesCount, (index) {
        final bool isPassed = index <= currentPageIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          height: 6,
          width: dotWidth,
          decoration: BoxDecoration(
            color: isPassed ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}
