import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/home_feature/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      decoration: BoxDecoration(
        color: Color(category.colorCode),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          SvgPicture.asset(
            category.image,
            width: 33,
            height: 33,
            colorFilter: ColorFilter.mode(ColorsManager.white, BlendMode.srcIn),
          ),
          SizedBox(height: 15),
          Text(
            category.title,
            style: TextStyles.medium12.copyWith(color: ColorsManager.white),
          ),
          SizedBox(height: 13),
        ],
      ),
    );
  }
}
