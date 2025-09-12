import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/data/models/product_model.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/product_card.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/section_header.dart';

class PopularDealsSection extends StatelessWidget {
  const PopularDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = ProductModel.products;
    return Column(
      children: [
        SectionHeader(title: 'Popular Deals', onTap: () {}),
        SizedBox(height: 20),
        SizedBox(
          height: 690,
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
      ],
    );
  }
}
