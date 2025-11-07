import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';

class CartDot extends StatelessWidget {
  const CartDot({super.key});

  @override
  Widget build(BuildContext context) {
    final CartCubit cartCubit = context.watch<CartCubit>();
    final int cartItemsCount = cartCubit.cartEntity.currentCartItems.length;
    return cartItemsCount != 0
        ? Transform.translate(
            offset: const Offset(10, -8),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white, width: 2),
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
