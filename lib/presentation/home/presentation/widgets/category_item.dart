import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      decoration: BoxDecoration(
        color: const Color(0xff4AB7B6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Image.network(category.coverPictureUrl, fit: BoxFit.fill),
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
