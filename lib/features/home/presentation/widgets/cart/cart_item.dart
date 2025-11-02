import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_image.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_name.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ProductImage(product: product, isLoved: false),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductName(product: product),
              const SizedBox(height: 5),
              Text("\$ ${product.price}", style: AppStyles.medium14),
              const SizedBox(height: 5),
            ],
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const CartControllers(numberOfItems: 0),
          ),
        ],
      ),
    );
  }
}
