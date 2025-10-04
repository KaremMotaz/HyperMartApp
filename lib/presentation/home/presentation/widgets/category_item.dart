import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.index});
  final Category category;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      decoration: BoxDecoration(
        color: ColorsManager.generateColorFromName(index: index),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          CachedNetworkImage(
            imageUrl: category.coverPictureUrl.isNotEmpty
                ? category.coverPictureUrl
                : AssetsManager.dummyImage,
            width: 91,
            height: 50,
            placeholder: (context, url) =>
                Container(width: 25, height: 25, color: Colors.grey[200]),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          const SizedBox(height: 15),
          Text(
            category.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.medium12.copyWith(
              color: ColorsManager.white,
              fontFamily: "DM_Sans",
            ),
          ),
          const SizedBox(height: 13),
        ],
      ),
    );
  }
}
