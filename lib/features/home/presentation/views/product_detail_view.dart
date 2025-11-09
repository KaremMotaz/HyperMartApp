import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_detail_card.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ProductDetailCard(product: product)),
    );
  }
}
