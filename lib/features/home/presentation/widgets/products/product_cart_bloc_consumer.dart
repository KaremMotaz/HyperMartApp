import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/add_to_cart_button.dart';
import '../cart/cart_controllers.dart';

class ProductCartBlocConsumer extends StatelessWidget {
  const ProductCartBlocConsumer({
    super.key,
    required this.product,
    this.addToCartButtonPadding,
    this.controllerPadding,
  });
  final ProductModel product;
  final double? addToCartButtonPadding;
  final double? controllerPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is AddCartItemFailure) {
            errorSnackBar(
              context: context,
              message: state.apiErrorModel.message,
            );
          }
          if (state is DecrementCartItemFailure) {
            errorSnackBar(
              context: context,
              message: state.apiErrorModel.message,
            );
          }
          if (state is UpdateCartItemFailure) {
            errorSnackBar(
              context: context,
              message: state.apiErrorModel.message,
            );
          }
        },
        builder: (context, state) {
          final CartItemModel? currentCartItem = context
              .read<CartCubit>()
              .cartEntity
              .getCartItem(productId: product.id);

          return currentCartItem != null
              ? Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: controllerPadding ?? 0,
                  ),
                  child: CartControllers(cartItem: currentCartItem),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: addToCartButtonPadding ?? 10,
                  ),
                  child: AddToCartButton(product: product),
                );
        },
      ),
    );
  }
}
