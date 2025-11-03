import 'package:flutter/material.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../products/quantity_button.dart';

class CartControllers extends StatelessWidget {
  const CartControllers({super.key, required this.numberOfItems});

  final int numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuantityButton(
          text: "-",
          color: AppColors.red,
          size: 34,
          onPressed: () {},
        ),
        Text(
          "$numberOfItems",
          style: AppStyles.bold14.copyWith(color: AppColors.black),
        ),
        QuantityButton(
          text: "+",
          color: AppColors.turquoise,
          size: 34,
          onPressed: () {},
        ),
      ],
    );
  }
}
