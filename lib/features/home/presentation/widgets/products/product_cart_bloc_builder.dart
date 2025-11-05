import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/helpers/logger.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/add_to_cart_button.dart';
import '../cart/cart_controllers.dart';

class ProductCartBlocBuilder extends StatefulWidget {
  const ProductCartBlocBuilder({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductCartBlocBuilder> createState() => _ProductCartBlocBuilderState();
}

class _ProductCartBlocBuilderState extends State<ProductCartBlocBuilder> {

  @override
  void initState() { 
    super.initState();
    context.read<CartCubit>().getCartItems();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is AddCartItemSuccess) {
            successSnackBar(context: context, message: state.response.message);
          }
        },
        buildWhen: (previous, current) =>
            current is AddCartItemSuccess ||
            current is UpdateCartItemSuccess ||
            current is DecrementCartItemSuccess,
        builder: (context, state) {
          final List<CartItemModel> currentCartItems = context
              .read<CartCubit>()
              .currentCartItems;
          Logger.log(currentCartItems[0].quantity.toString());
          CartItemModel? existingCartItem;
          try {
            existingCartItem = currentCartItems.firstWhere(
              (item) => item.productId == widget.product.id,
            );
          } on StateError {
            // not found
            existingCartItem = null;
          }
          return state.maybeWhen(
            initial: () {
              if (existingCartItem != null) {
                return CartControllers(
                  quantity: existingCartItem.quantity,
                  itemId: existingCartItem.itemId,
                );
              } else {
                return AddToCartButton(product: widget.product);
              }
            },
            addCartItemSuccess: (response) {
              return response.quantity > 0
                  ? CartControllers(
                      quantity: response.quantity,
                      itemId: response.id!,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AddToCartButton(product: widget.product),
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
                      child: AddToCartButton(product: widget.product),
                    );
            },
            orElse: () {
              return AddToCartButton(product: widget.product);
            },
          );
        },
      ),
    );
  }
}
