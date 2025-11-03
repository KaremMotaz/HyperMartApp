import 'package:flutter/material.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/cart/get_cart_items_response.dart';
import 'cart_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
    required this.cartItems,
    this.isLoading = false,
  });
  final List<CartItemModel> cartItems;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: AppColors.white,
            child: Text(
              "You have ${cartItems.length} items in your cart",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Skeletonizer(
          containersColor: Colors.grey[50],
          enabled: isLoading,
          child: CartItem(cartItem: cartItems[0]),
        ),
      ],
    );
  }
}
