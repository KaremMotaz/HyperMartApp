import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../products/quantity_button.dart';

class CartControllers extends StatelessWidget {
  const CartControllers({super.key, required this.cartItem});

  final CartItemModel cartItem;

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
            if (cartItem.quantity == 0) {
              context.read<CartCubit>().deleteCartItem(itemId: cartItem.itemId);
            } else {
              context.read<CartCubit>().decrementCartItem(
                itemId: cartItem.itemId,
              );
            }
          },
          isLoading:
              context.read<CartCubit>().state is DecrementCartItemLoading &&
              cartItem.itemId == context.read<CartCubit>().loadingItemId,
        ),
        Text(
          "${cartItem.quantity}",
          style: AppStyles.bold14.copyWith(color: AppColors.black),
        ),
        QuantityButton(
          text: "+",
          color: AppColors.turquoise,
          size: 34,
          onPressed: () {
            context.read<CartCubit>().updateCartItem(
              itemId: cartItem.itemId,
              quantity: cartItem.quantity + 1,
            );
          },
          isLoading:
              context.read<CartCubit>().state is UpdateCartItemLoading &&
              cartItem.itemId == context.read<CartCubit>().loadingItemId,
        ),
      ],
    );
  }
}
