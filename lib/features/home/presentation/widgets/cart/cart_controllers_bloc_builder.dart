import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers.dart';

class CartControllersBlocBuilder extends StatelessWidget {
  const CartControllersBlocBuilder({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return CartControllersWithDeleteButton(cartItem: cartItem);
          },
          deleteCartItemSuccess: () {
            return CartControllersWithDeleteButton(cartItem: cartItem);
          },
        );
      },
    );
  }
}

class CartControllersWithDeleteButton extends StatelessWidget {
  const CartControllersWithDeleteButton({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            context.read<CartCubit>().deleteCartItem(itemId: cartItem.itemId);
          },
          child: SvgPicture.asset(AppAssets.trashIcon, width: 23, height: 23),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffefefef),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const CartControllers(quantity: 0, productId: ''),
        ),
      ],
    );
  }
}
