import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/network_image_with_fallback.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/favourite_widget.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return NetworkImageWithFallback(
      imageUrl: product.coverPictureUrl,
      height: 170,
      padding: const EdgeInsets.symmetric(vertical: 10),
      backgroundColor: AppColors.grey,
      child: FavouriteWidget(productModel: product),
    );
  }
}
