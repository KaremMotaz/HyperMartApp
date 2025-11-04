import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/network_image_with_fallback.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';

class CartItemImage extends StatelessWidget {
  const CartItemImage({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return NetworkImageWithFallback(
      imageUrl: cartItem.productCoverUrl,
      height: 90,
      width: 90,
      backgroundColor: AppColors.lightGrey,
    );
  }
}
