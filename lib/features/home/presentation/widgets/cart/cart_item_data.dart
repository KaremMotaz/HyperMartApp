import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';

class CartItemData extends StatelessWidget {
  const CartItemData({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
                cartItem.productCoverUrl.isNotEmpty
                    ? cartItem.productCoverUrl
                    : AppAssets.dummyImage,
                scale: 1.5,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItem.productName,
                style: AppStyles.bold16,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                "${cartItem.weightInGrams}g",
                style: AppStyles.regular14,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                "\$${cartItem.basePricePerUnit}",
                style: AppStyles.semiBold20,
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
