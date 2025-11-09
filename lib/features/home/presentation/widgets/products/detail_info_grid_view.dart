import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/detail_info.dart';

class DetailInfoGridView extends StatelessWidget {
  const DetailInfoGridView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 2,
      ),
      children: [
        DetailInfo(
          info: product.weight.toString(),
          infoImage: AppAssets.weight,
          title: "Weight",
        ),
        DetailInfo(
          info: product.stock.toString(),
          infoImage: AppAssets.quantity,
          title: "Quantity",
        ),
        DetailInfo(
          info: product.reviewsCount.toString(),
          infoImage: AppAssets.reviews,
          title: "Reviews",
        ),
        DetailInfo(
          info: product.color.toString(),
          infoImage: AppAssets.color,
          title: "Color",
        ),
      ],
    );
  }
}
