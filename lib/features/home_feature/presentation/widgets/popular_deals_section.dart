import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/product_card.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/section_header.dart';

class PopularDealsSection extends StatelessWidget {
  const PopularDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Popular Deals', onTap: () {}),
        SizedBox(height: 20),
        SizedBox(
          height: 600,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
            ),
            children: [ProductCard()],
          ),
        ),
      ],
    );
  }
}
