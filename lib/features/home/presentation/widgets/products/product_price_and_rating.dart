import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/Products/get_products_response.dart';

class ProductPriceAndRating extends StatelessWidget {
  const ProductPriceAndRating({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("\$ ${product.price}", style: AppStyles.medium14),
          Row(
            children: [
              Text(
                "${product.rating}",
                style: AppStyles.extraBold12.copyWith(color: AppColors.orange),
              ),
              const SizedBox(width: 6),
              SvgPicture.asset(AppAssets.starIcon),
            ],
          ),
        ],
      ),
    );
  }
}
