import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/add_to_cart_button.dart';
import '../cart/cart_controllers.dart';

class ProductCartSection extends StatelessWidget {
  const ProductCartSection({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is AddCartItemSuccess) {
            successSnackBar(context: context, message: state.response.message);
          }
          if (state is DecrementCartItemSuccess) {
            successSnackBar(context: context, message: state.response.message);
          }
        },
        builder: (context, state) {
          return state.maybeWhen(
            addCartItemSuccess: (response) {
              return response.quantity > 0
                  ? CartControllers(
                      quantity: response.quantity,
                      productId: response.productId!,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AddToCartButton(product: product),
                    );
            },
            decrementCartItemSuccess: (response) {
              return response.quantity > 0
                  ? CartControllers(
                      quantity: response.quantity,
                      productId: response.productId!,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AddToCartButton(product: product),
                    );
            },
            orElse: () {
              return AddToCartButton(product: product);
            },
          );
        },
      ),
    );
  }
}
