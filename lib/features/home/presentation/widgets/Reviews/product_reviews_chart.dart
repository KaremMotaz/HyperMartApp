import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/reviews_chart_item.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/summery_info.dart';

class ProductReviewsChart extends StatelessWidget {
  const ProductReviewsChart({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    // نسب التقييمات لكل عدد نجوم (5 -> 1)
    final reviewPercentages = {5: 0.8, 4: 0.15, 3: 0.03, 2: 0.015, 1: 0.005};

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SummeryInfo(product: product),
        const SizedBox(width: 26),
        Column(
          children: [
            ...List.generate(5, (i) {
              final star = 5 - i;
              final percent = reviewPercentages[star] ?? 0.0;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ReviewsChartItem(star: star, percent: percent),
              );
            }),
          ],
        ),
      ],
    );
  }
}
