import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/cart/get_cart_items_response.dart';
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
          current is GetCartItemsLoading ||
          current is GetCartItemsSuccess ||
          current is GetCartItemsFailure ||
          current is DeleteCartItemSuccess ||
          current is AddCartItemSuccess ||
          current is UpdateCartItemSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          getCartItemsLoading: () {
            return CartViewBody(
              cartItems: CartItemModel.dummyCartItems,
              isLoading: true,
            );
          },
          getCartItemsSuccess: (getCartItemsResponse) {
            // if cart is empty
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
          deleteCartItemSuccess: () {
            final cartItems = context.read<CartCubit>().currentCartItems;

            if (cartItems.isEmpty) {
              return const EmptyCartWidget();
            }
            return CartViewBody(cartItems: cartItems);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
