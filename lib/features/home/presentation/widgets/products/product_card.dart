import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/network_image_with_fallback.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/manager/favourite_products_cubit/favourite_products_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/favourite_widget.dart';
import '../../../../../core/routing/routes.dart';
import 'product_cart_bloc_consumer.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/Products/get_products_response.dart';
import 'discount_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final cartCubit = context.read<CartCubit>();
        final favouriteProductsCubit = context.read<FavouriteProductsCubit>();
        context.push(
          Routes.productDetailView,
          extra: {
            'cartCubit': cartCubit,
            'favouriteCubit': favouriteProductsCubit,
            'product': product,
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: 2),
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Column(
              children: [
                NetworkImageWithFallback(
                  imageUrl: product.coverPictureUrl,
                  height: 170,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  backgroundColor: AppColors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: FavouriteWidget(productModel: product),
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    product.name,
                    style: AppStyles.regular14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 9),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$ ${product.price}", style: AppStyles.medium14),
                      Row(
                        children: [
                          Text(
                            "${product.rating}",
                            style: AppStyles.extraBold12.copyWith(
                              color: AppColors.orange,
                            ),
                          ),
                          const SizedBox(width: 6),
                          SvgPicture.asset(AppAssets.starIcon),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                ProductCartBlocConsumer(product: product),
                const SizedBox(height: 18),
              ],
            ),
            product.discountPercentage > 0
                ? Positioned(
                    top: 15,
                    right: -34,
                    child: DiscountWidget(discount: product.discountPercentage),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
