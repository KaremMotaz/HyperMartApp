import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/network_image_with_fallback.dart';
import 'package:hyper_mart_app/core/widgets/pop_icon.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';

class ProductDetailImageHeader extends StatelessWidget {
  const ProductDetailImageHeader({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return NetworkImageWithFallback(
      imageUrl: product.coverPictureUrl,
      height: 360,
      padding: const EdgeInsets.symmetric(vertical: 10),
      borderRadius: 24,
      backgroundColor: AppColors.grey,
      fit: BoxFit.fill,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [PopIcon(), Spacer()],
        ),
      ),
    );
  }
}
