import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/cart_cubit/cart_cubit.dart';
import 'cart_view_body.dart';
import 'empty_cart_widget.dart';
import '../../../../../core/widgets/error_body.dart';

class CartItemsBlocBuilder extends StatelessWidget {
  const CartItemsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is GetCartItemsSuccess ||
          current is GetCartItemsFailure ||
          current is DeleteCartItemSuccess ||
          current is AddCartItemSuccess ||
          current is UpdateCartItemSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          getCartItemsSuccess: (getCartItemsResponse) {
            if (getCartItemsResponse.cartItems.isEmpty) {
              return const EmptyCartWidget();
            }
            return CartViewBody(cartItems: getCartItemsResponse.cartItems);
          },
          getCartItemsFailure: (apiErrorModel) {
            return ErrorBody(
              message: apiErrorModel.message,
              details: apiErrorModel.details ?? [],
            );
          },
          orElse: () {
            final cartItems = context.read<CartCubit>().currentCartItems;
            if (cartItems.isEmpty) {
              return const EmptyCartWidget();
            }
            return CartViewBody(cartItems: cartItems);
          },
        );
      },
    );
  }
}
