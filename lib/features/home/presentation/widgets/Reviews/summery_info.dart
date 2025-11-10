import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/shared_widgets/product_rating.dart';

class SummeryInfo extends StatelessWidget {
  const SummeryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ProductRating(productRating: 2.5),
        SizedBox(height: 20),
        Text("%88", style: AppStyles.semiBold15),
        SizedBox(height: 8),
        Text("Recommended", style: AppStyles.semiBold15),
      ],
    );
  }
}
