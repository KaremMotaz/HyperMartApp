import 'package:flutter/material.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/Products/get_products_response.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        product.name,
        style: AppStyles.regular14,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
