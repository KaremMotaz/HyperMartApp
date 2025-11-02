import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../data/models/categories/get_categories_response.dart';
import 'category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.categories,
    this.isLoading = false,
  });

  final List<Category> categories;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final List<Category> limitedCategories = categories.take(4).toList();
    return SizedBox(
      height: 100,
      child: Skeletonizer(
        containersColor: Colors.grey[50],
        enabled: isLoading,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: limitedCategories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            return CategoryItem(
              category: limitedCategories[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}
