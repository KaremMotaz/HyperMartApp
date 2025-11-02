import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.products,
    required this.height,
    this.isLoading = false,
  });

  final List<ProductModel> products;
  final double height;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Skeletonizer(
        containersColor: Colors.grey[50],
        enabled: isLoading,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.48,
          ),
          itemCount: 4,
          itemBuilder: (context, index) =>
              ProductCard(product: products[index]),
        ),
      ),
    );
  }
}
