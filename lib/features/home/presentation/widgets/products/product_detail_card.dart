import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/discount_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_detail_body.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_detail_image_header.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ProductDetailImageHeader(product: product),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ProductDetailBody(product: product),
              ),
            ],
          ),
        ),
        product.discountPercentage > 0
            ? Positioned(
                top: 15,
                right: -34,
                child: DiscountWidget(discount: product.discountPercentage),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}




