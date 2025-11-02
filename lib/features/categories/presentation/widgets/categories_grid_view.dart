import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_response.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/category_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
    required this.categories,
    this.isLoading = false,
  });
  final List<Category> categories;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Skeletonizer(
        containersColor: Colors.grey[50],
        enabled: isLoading,
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return CategoryItem(
              category: categories[index],
              index: index,
              style: AppStyles.semiBold20.copyWith(
                color: AppColors.white,
                fontFamily: "DM_Sans",
              ),
            );
          },
        ),
      ),
    );
  }
}
