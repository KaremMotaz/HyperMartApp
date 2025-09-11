import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.bold16),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(AssetsManager.arrowRightIcon),
        ),
      ],
    );
  }
}