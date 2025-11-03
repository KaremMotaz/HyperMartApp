import 'package:flutter/material.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/Products/get_products_response.dart';
import 'favourite_widget.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product, required this.isLoved});

  final ProductModel product;
  final bool isLoved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.grey,
          image: DecorationImage(
            image: NetworkImage(
              product.coverPictureUrl.isNotEmpty
                  ? product.coverPictureUrl
                  : AppAssets.dummyImage,
              scale: 1.5,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: FavouriteWidget(isLoved: isLoved),
      ),
    );
  }
}
