import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_card.dart';

class FavouriteProductsGridView extends StatelessWidget {
  const FavouriteProductsGridView({super.key, required this.favouriteProducts});

  final List<ProductModel?> favouriteProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: favouriteProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.52,
      ),
      itemBuilder: (context, index) {
        return ProductCard(product: favouriteProducts[index]!);
      },
    );
  }
}
