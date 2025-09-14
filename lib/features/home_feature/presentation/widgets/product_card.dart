import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/product_model.dart';
import '../../../../core/widgets/app_text_button.dart';
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
        border: Border.all(color: ColorsManager.grey, width: 2),
        borderRadius: BorderRadius.circular(16),
        color: ColorsManager.white,
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
                  color: ColorsManager.grey,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, top: 11),
                        child: SvgPicture.asset(
                          isLoved
                              ? AssetsManager.heartFullIcon
                              : AssetsManager.heartOutlineIcon,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    Image.asset(product.image, fit: BoxFit.fill, height: 130),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(product.title, style: TextStyles.regular14,
                overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("₹ ${product.price}", style: TextStyles.medium14),
                    Row(
                      children: [
                        Text(
                          "${product.rating}",
                          style: TextStyles.extraBold12.copyWith(
                            color: ColorsManager.orange,
                          ),
                        ),
                        SizedBox(width: 6),
                        SvgPicture.asset(AssetsManager.starIcon),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
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
                            backgroundColor: ColorsManager.red,
                            borderColor: ColorsManager.red,
                            textStyle: TextStyles.extraBold22.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            "$numberOfItems",
                            style: TextStyles.bold14.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          AppTextButton(
                            buttonText: "+",
                            onPressed: () {},
                            buttonWidth: 45,
                            buttonHeight: 45,
                            horizontalPadding: 0,
                            verticalPadding: 0,
                            backgroundColor: ColorsManager.turquoise,
                            borderColor: ColorsManager.turquoise,
                            textStyle: TextStyles.extraBold22.copyWith(
                              color: ColorsManager.white,
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
                        backgroundColor: ColorsManager.white,
                        borderColor: ColorsManager.orange,
                        textStyle: TextStyles.semiBold15.copyWith(
                          color: ColorsManager.orange,
                        ),
                      ),
                    ),
            ],
          ),
          product.isDiscountFound
              ? Positioned(top: 15, right: -34, child: DiscountWidget())
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
