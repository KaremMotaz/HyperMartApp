import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';
import 'package:hyper_mart_app/presentation/home/presentation/widgets/category_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    return Skeletonizer(
      enabled: isLoading,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index], index: index);
        },
      ),
    );
  }
}
