import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/quantity_button.dart';

class ProductCartSection extends StatelessWidget {
  const ProductCartSection({
    super.key,
    required this.numberOfItems,
    required this.isAddedToCart,
  });
  
  final bool isAddedToCart;
  final int numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: isAddedToCart
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuantityButton(
                  text: "-",
                  color: AppColors.red,
                  onPressed: () {},
                ),
                Text(
                  "$numberOfItems",
                  style: AppStyles.bold14.copyWith(color: AppColors.black),
                ),
                QuantityButton(
                  text: "+",
                  color: AppColors.turquoise,
                  onPressed: () {},
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AppTextButton(
                buttonText: "Add to cart",
                onPressed: () {},
                buttonHeight: 45,
                buttonWidth: double.infinity,
                backgroundColor: AppColors.white,
                borderColor: AppColors.orange,
                textStyle: AppStyles.semiBold15.copyWith(
                  color: AppColors.orange,
                ),
              ),
            ),
    );
  }
}
