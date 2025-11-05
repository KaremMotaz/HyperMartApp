import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/add_to_cart_button.dart';
import '../cart/cart_controllers.dart';

class ProductCartBlocBuilder extends StatelessWidget {
  const ProductCartBlocBuilder({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocListener<CartCubit, CartState>(
        listener: (context, state) {
          if (state is AddCartItemSuccess &&
              state.response.productId == product.id) {
            successSnackBar(context: context, message: state.response.message);
          }
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
        child: BlocConsumer<CartCubit, CartState>(
          listener: (context, state) {},
          buildWhen: (previous, current) {
            if (current is AddCartItemSuccess) {
              return current.response.productId == product.id;
            }
            if (current is UpdateCartItemSuccess) {
              return current.response.productId == product.id;
            }
            if (current is DecrementCartItemSuccess) {
              return current.response.productId == product.id;
            }
            if (current is GetCartItemsSuccess) {
              return true;
            }
            return false;
          },

          builder: (context, state) {
            final List<CartItemModel> currentCartItems = context
                .read<CartCubit>()
                .currentCartItems;
            CartItemModel? existingCartItem;
            try {
              existingCartItem = currentCartItems.firstWhere(
                (item) => item.productId == product.id,
              );
            } on StateError {
              // not found
              existingCartItem = null;
            }
            return state.maybeWhen(
              getCartItemsSuccess: (cartResponse) {
                if (existingCartItem != null) {
                  return CartControllers(
                    quantity: existingCartItem.quantity,
                    itemId: existingCartItem.itemId,
                  );
                } else {
                  return AddToCartButton(product: product);
                }
              },
              addCartItemSuccess: (response) {
                return CartControllers(
                  quantity: response.quantity,
                  itemId: response.id!,
                );
              },
              updateCartItemSuccess: (response) {
                return CartControllers(
                  quantity: response.quantity,
                  itemId: response.id,
                );
              },
              decrementCartItemSuccess: (response) {
                return response.quantity > 0
                    ? CartControllers(
                        quantity: response.quantity,
                        itemId: response.itemId!,
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: AddToCartButton(product: product),
                      );
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }
}
