import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/quantity_button.dart';

class CartControllers extends StatelessWidget {
  const CartControllers({super.key, required this.numberOfItems});

  final int numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuantityButton(text: "-", color: AppColors.red, onPressed: () {}),
        Text(
          "$numberOfItems",
          style: AppStyles.bold14.copyWith(color: AppColors.black),
        ),
        QuantityButton(text: "+", color: AppColors.turquoise, onPressed: () {}),
      ],
    );
  }
}
