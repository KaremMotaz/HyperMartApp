import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.785398,
      child: Container(
        width: 130,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(color: AppColors.red),
        child: Text(
          "5% OFF",
          textAlign: TextAlign.center,
          style: AppStyles.extraBold18.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
