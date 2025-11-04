import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../products/quantity_button.dart';

class CartControllers extends StatelessWidget {
  const CartControllers({
    super.key,
    required this.quantity,
    required this.productId,
  });

  final int quantity;
  final String productId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuantityButton(
          text: "-",
          color: AppColors.red,
          size: 34,
          onPressed: () {
            context.read<CartCubit>().decrementCartItem(
              productId: productId,
              quantity: quantity,
            );
          },
        ),
        Text(
          "$quantity",
          style: AppStyles.bold14.copyWith(color: AppColors.black),
        ),
        QuantityButton(
          text: "+",
          color: AppColors.turquoise,
          size: 34,
          onPressed: () {
            context.read<CartCubit>().addCartItem(productId: productId);
          },
        ),
      ],
    );
  }
}
