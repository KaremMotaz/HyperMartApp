import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/detail_info_grid_view.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/favourite_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_cart_bloc_consumer.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.name.toUpperCase(),
              style: AppStyles.bold20,
              overflow: TextOverflow.ellipsis,
            ),
            FavouriteWidget(productModel: product),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("\$${product.price}", style: AppStyles.medium18),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      "${product.rating}",
                      style: AppStyles.extraBold18.copyWith(
                        color: AppColors.orange,
                      ),
                    ),
                    const SizedBox(width: 6),
                    SvgPicture.asset(AppAssets.starIcon, width: 16, height: 16),
                  ],
                ),
              ],
            ),

            ProductCartBlocConsumer(
              product: product,
              buttonWidth: 120,
              cartControllersWidth: 120,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          product.description,
          style: AppStyles.medium18.copyWith(color: AppColors.darkergrey),
        ),
        const SizedBox(height: 18),
        SizedBox(height: 195, child: DetailInfoGridView(product: product)),
        const SizedBox(height: 8),
      ],
    );
  }
}
