import 'package:flutter/material.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/widgets/universal_image.dart';
import '../../../categories/data/models/get_categories_model.dart';
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
          const SizedBox(height: 20),
          UniversalImage(
            url: category.coverPictureUrl.isNotEmpty
                ? category.coverPictureUrl
                : AssetsManager.dummyImage,
            width: 33,
            height: 33,
          ),
          const SizedBox(height: 15),
          Text(
            (category.name.isNotEmpty)
                ? '${category.name[0].toUpperCase()}${category.name.substring(1)}'
                : '',
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
