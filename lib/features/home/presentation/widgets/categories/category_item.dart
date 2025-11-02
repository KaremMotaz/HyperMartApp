import 'package:flutter/material.dart';
import '../../../../../core/widgets/universal_image.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/categories/get_categories_response.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.index,
    this.style,
  });
  final Category category;
  final int index;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      decoration: BoxDecoration(
        color: AppColors.generateColorFromName(index: index),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: UniversalImage(
              url: category.coverPictureUrl.isNotEmpty
                  ? category.coverPictureUrl
                  : AppAssets.dummyImage,
              width: 33,
              height: 33,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            (category.name.isNotEmpty)
                ? '${category.name[0].toUpperCase()}${category.name.substring(1)}'
                : '',
            overflow: TextOverflow.ellipsis,
            style:
                style ??
                AppStyles.medium12.copyWith(
                  color: AppColors.white,
                  fontFamily: "DM_Sans",
                ),
          ),
          const SizedBox(height: 13),
        ],
      ),
    );
  }
}
