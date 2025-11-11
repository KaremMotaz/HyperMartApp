import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/custom_rating.dart';

class SummeryInfo extends StatelessWidget {
  const SummeryInfo({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Transform.translate(
              offset: const Offset(0, 10),
              child: const Text("4.3", style: AppStyles.extraBold40),
            ),
            const Text("/5", style: AppStyles.semiBold16),
          ],
        ),
        const SizedBox(height: 10),
        const CustomRating(isEditable: false, itemSize: 22, userRating: 4),
        const SizedBox(height: 10),
        Text(
          product.reviewsCount == 1
              ? "${product.reviewsCount} rating"
              : "${product.reviewsCount}  ratings",
          style: AppStyles.semiBold18,
        ),
      ],
    );
  }
}
