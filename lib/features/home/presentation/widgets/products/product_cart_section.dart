import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers.dart';

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
          ? CartControllers(numberOfItems: numberOfItems)
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
