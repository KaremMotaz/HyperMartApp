import 'package:flutter/material.dart';
import 'product_cart_section.dart';
import 'product_image.dart';
import 'product_name.dart';
import 'product_price_and_rating.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/Products/get_products_response.dart';
import 'discount_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  final bool isAddedToCart = true;
  final bool isLoved = false;
  final bool isDiscountFound = false;
  final int numberOfItems = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Column(
            children: [
              ProductImage(product: product, isLoved: isLoved),
              const SizedBox(height: 18),
              ProductName(product: product),
              const SizedBox(height: 9),
              ProductPriceAndRating(product: product),
              const SizedBox(height: 18),
              ProductCartSection(
                numberOfItems: numberOfItems,
                isAddedToCart: true,
              ),
              const SizedBox(height: 18),
            ],
          ),
          product.discountPercentage > 0
              ? Positioned(
                  top: 15,
                  right: -34,
                  child: DiscountWidget(discount: product.discountPercentage),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
