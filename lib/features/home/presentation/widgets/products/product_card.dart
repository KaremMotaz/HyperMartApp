import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/widgets/universal_image.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../data/models/Products/get_products_response.dart';
import 'discount_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  final bool isAddedToCart = true;
  final bool isLoved = false;
  final bool isDiscountFound = false;
  final int numberOfItems = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.grey,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, top: 11),
                        child: SvgPicture.asset(
                          isLoved
                              ? AppAssets.heartFullIcon
                              : AppAssets.heartOutlineIcon,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    UniversalImage(
                      url: product.coverPictureUrl,
                      fit: BoxFit.fill,
                      height: 130,
                    ),
                  ],
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
                    Text("₹ ${product.price}", style: AppStyles.medium14),
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
              isAddedToCart
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTextButton(
                            buttonText: "-",
                            onPressed: () {},
                            buttonWidth: 45,
                            buttonHeight: 45,
                            horizontalPadding: 0,
                            verticalPadding: 0,
                            backgroundColor: AppColors.red,
                            borderColor: AppColors.red,
                            textStyle: AppStyles.extraBold22.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            "$numberOfItems",
                            style: AppStyles.bold14.copyWith(
                              color: AppColors.black,
                            ),
                          ),
                          AppTextButton(
                            buttonText: "+",
                            onPressed: () {},
                            buttonWidth: 45,
                            buttonHeight: 45,
                            horizontalPadding: 0,
                            verticalPadding: 0,
                            backgroundColor: AppColors.turquoise,
                            borderColor: AppColors.turquoise,
                            textStyle: AppStyles.extraBold22.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AppTextButton(
                        buttonText: "Add to cart",
                        onPressed: () {},
                        buttonWidth: double.infinity,
                        backgroundColor: AppColors.white,
                        borderColor: AppColors.orange,
                        textStyle: AppStyles.semiBold15.copyWith(
                          color: AppColors.orange,
                        ),
                      ),
                    ),
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
    );
  }
}
