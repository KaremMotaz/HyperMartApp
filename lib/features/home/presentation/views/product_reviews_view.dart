import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/add_review_button.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/product_reviews_chart.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/user_review_item.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/shared_widgets/custom_appbar.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppbar(title: "Reviews"),
                  const SizedBox(height: 20),
                  Text(
                    "${product.reviewsCount} Reviews",
                    style: AppStyles.semiBold18,
                  ),
                  const SizedBox(height: 10),
                  const Text("Summary", style: AppStyles.semiBold18),
                  const SizedBox(height: 6),
                  const ProductReviewsChart(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) => const UserReviewItem(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            Positioned(
              bottom: 5,
              left: 30,
              right: 30,
              child: AddReviewButton(product: product),
            ),
          ],
        ),
      ),
    );
  }
}
