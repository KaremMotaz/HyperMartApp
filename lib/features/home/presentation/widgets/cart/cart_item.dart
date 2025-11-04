import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers_bloc_builder.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_item_data.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/cart/get_cart_items_response.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CartItemData(cartItem: cartItem),
          const Spacer(),
          CartControllersBlocBuilder(cartItem: cartItem),
        ],
      ),
    );
  }
}
