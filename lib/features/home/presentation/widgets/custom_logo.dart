import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Hyper",
            style: TextStyles.bold18.copyWith(color: ColorsManager.orange),
          ),
          TextSpan(
            text: "Mart",
            style: TextStyles.bold18.copyWith(color: ColorsManager.turquoise),
          ),
        ],
      ),
    );
  }
}
