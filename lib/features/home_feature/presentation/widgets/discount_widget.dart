import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.785398,
      child: Container(
        width: 130,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(color: ColorsManager.red),
        child: Text(
          "5% OFF",
          textAlign: TextAlign.center,
          style: TextStyles.extraBold18.copyWith(color: ColorsManager.white),
        ),
      ),
    );
  }
}
