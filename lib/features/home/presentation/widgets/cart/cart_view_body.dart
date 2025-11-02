import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: AppColors.white,
            child: const Text(
              "You have 3 items in your cart",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 20),
        CartItem(product: ,),
      ],
    );
  }
}
