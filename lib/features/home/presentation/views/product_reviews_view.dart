import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/other/custom_appbar.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});
  // final ProductModel product;
  final String productId = "fc1d63ce-e3cc-40a1-aba1-5ea71824de1e";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [CustomAppbar(title: "Reviews")]),
        ),
      ),
    );
  }
}
