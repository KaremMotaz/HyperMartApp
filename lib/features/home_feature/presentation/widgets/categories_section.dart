import 'package:flutter/material.dart';

import '../../data/models/category_model.dart';
import 'category_item.dart';
import 'section_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = CategoryModel.categories;
    return Column(
      children: [
        SectionHeader(title: 'Categories', onTap: () {}),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return CategoryItem(category: categories[index]);
            },
          ),
        ),
      ],
    );
  }
}
