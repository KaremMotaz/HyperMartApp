import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brandItem});
  final String brandItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.brandGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(brandItem),
    );
  }
}
