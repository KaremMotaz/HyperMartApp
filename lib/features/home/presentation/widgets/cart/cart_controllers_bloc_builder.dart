import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers.dart';

class CartControllersBlocBuilder extends StatelessWidget {
  const CartControllersBlocBuilder({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) {
        if (current is UpdateCartItemSuccess &&
            current.response.id == cartItem.itemId) {
          return true;
        }
        if (current is UpdateCartItemLoading &&
            current.itemId == cartItem.itemId) {
          return true;
        }
        if (current is DecrementCartItemSuccess &&
            current.response.itemId == cartItem.itemId) {
          return true;
        }
        if (current is DecrementCartItemLoading &&
            current.itemId == cartItem.itemId) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.maybeWhen(
          updateCartItemSuccess: (response) {
            return CartControllers(
              quantity: response.quantity,
              itemId: response.id,
            );
          },
          decrementCartItemSuccess: (response) {
            return CartControllers(
              quantity: response.quantity,
              itemId: response.itemId!,
            );
          },
          orElse: () {
            return CartControllers(
              itemId: cartItem.itemId,
              quantity: cartItem.quantity,
            );
          },
        );
      },
    );
  }
}
