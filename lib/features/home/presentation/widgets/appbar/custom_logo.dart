import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Hyper",
            style: AppStyles.bold18.copyWith(color: AppColors.orange),
          ),
          TextSpan(
            text: "Mart",
            style: AppStyles.bold18.copyWith(color: AppColors.turquoise),
          ),
        ],
      ),
    );
  }
}
