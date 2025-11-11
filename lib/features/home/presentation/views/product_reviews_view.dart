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
                  const Text("Rating overview", style: AppStyles.semiBold18),
                  const SizedBox(height: 6),
                  ProductReviewsChart(product: product),
                  const SizedBox(height: 16),
                  Text(
                    product.reviewsCount == 1
                        ? "${product.reviewsCount} Review"
                        : "${product.reviewsCount}  Reviews",
                    style: AppStyles.semiBold18,
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) => const UserReviewItem(),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(50),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: const Offset(0, -6),
                    ),
                  ],
                ),
                child: AddReviewButton(product: product),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
