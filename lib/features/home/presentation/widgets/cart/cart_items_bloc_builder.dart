import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_items_cubit/cart_items_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_view_body.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/empty_cart_widget.dart';
import '../../../../../core/widgets/error_body.dart';

class CartItemsBlocBuilder extends StatelessWidget {
  const CartItemsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      buildWhen: (previous, current) =>
          current is GetCartItemsLoading ||
          current is GetCartItemsSuccess ||
          current is GetCartItemsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          getCartItemsLoading: () {
            return Expanded(
              child: CartViewBody(
                cartItems: CartItemModel.dummyCartItems,
                isLoading: true,
              ),
            );
          },
          getCartItemsSuccess: (getCartItemsResponse) {
            // if cart is empty
            if (getCartItemsResponse.cartItems.isEmpty) {
              return const EmptyCartWidget();
            }
            return Expanded(
              child: CartViewBody(cartItems: getCartItemsResponse.cartItems),
            );
          },
          getCartItemsFailure: (apiErrorModel) {
            return ErrorBody(
              message: apiErrorModel.message,
              details: apiErrorModel.details ?? [],
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
