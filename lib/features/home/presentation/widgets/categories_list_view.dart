import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../categories/data/models/get_categories_response.dart';
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
    return SizedBox(
      height: 100,
      child: Skeletonizer(
        containersColor: Colors.grey[50],
        enabled: isLoading,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            return CategoryItem(category: categories[index], index: index);
          },
        ),
      ),
    );
  }
}
