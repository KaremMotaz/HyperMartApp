import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name.toUpperCase(),
              style: AppStyles.bold20,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: FavouriteWidget(productModel: product),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$${product.price}", style: AppStyles.semiBold18),
                const SizedBox(height: 12),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.starIcon, width: 19, height: 19),
                    const SizedBox(width: 9),
                    Text("${product.rating}", style: AppStyles.semiBold16),
                    const SizedBox(width: 9),
                    Text(
                      "(+${product.reviewsCount})",
                      style: AppStyles.regular16.copyWith(
                        color: AppColors.appGrey,
                      ),
                    ),
                    const SizedBox(width: 9),
                    InkWell(
                      onTap: () {
                        context.push(
                          Routes.productReviewsView,
                          extra: {'product': product},
                        );
                      },
                      child: Text(
                        "Reviews",
                        style: AppStyles.bold16.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.green,
                          decorationThickness: 2,
                          color: AppColors.green,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
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
          style: AppStyles.regular16.copyWith(color: AppColors.darkergrey),
        ),
        const SizedBox(height: 18),
        SizedBox(height: 195, child: DetailInfoGridView(product: product)),
        const SizedBox(height: 8),
      ],
    );
  }
}
