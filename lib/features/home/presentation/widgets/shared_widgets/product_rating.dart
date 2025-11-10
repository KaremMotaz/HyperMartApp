import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, required this.productRating});

  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.starIcon, width: 19, height: 19),
        const SizedBox(width: 9),
        Text("$productRating", style: AppStyles.semiBold16),
      ],
    );
  }
}
