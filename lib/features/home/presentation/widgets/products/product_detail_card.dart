import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/network_image_with_fallback.dart';
import 'package:hyper_mart_app/core/widgets/pop_icon.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/detail_info.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/discount_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/favourite_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/product_cart_bloc_consumer.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              NetworkImageWithFallback(
                imageUrl: product.coverPictureUrl,
                height: 300,
                padding: const EdgeInsets.symmetric(vertical: 10),
                borderRadius: 24,
                backgroundColor: AppColors.grey,
                fit: BoxFit.fill,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [PopIcon(), Spacer()],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
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
                        SvgPicture.asset(
                          AppAssets.starIcon,
                          width: 16,
                          height: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      product.description,
                      style: AppStyles.medium18.copyWith(
                        color: AppColors.darkergrey,
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: 195,
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 2,
                            ),
                        children: [
                          DetailInfo(
                            info: product.weight.toString(),
                            infoImage: AppAssets.weight,
                            title: "Weight",
                          ),
                          DetailInfo(
                            info: product.stock.toString(),
                            infoImage: AppAssets.quantity,
                            title: "Quantity",
                          ),
                          DetailInfo(
                            info: product.reviewsCount.toString(),
                            infoImage: AppAssets.reviews,
                            title: "Reviews",
                          ),
                          DetailInfo(
                            info: product.color.toString(),
                            infoImage: AppAssets.color,
                            title: "Color",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    ProductCartBlocConsumer(
                      product: product,
                      addToCartButtonPadding: 0,
                      controllerPadding: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        product.discountPercentage > 0
            ? Positioned(
                top: 15,
                right: -34,
                child: DiscountWidget(discount: product.discountPercentage),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
