import 'package:flutter/material.dart';
import '../../../categories/data/models/get_categories_model.dart';
import 'categories_list_view.dart';
import 'section_header.dart';

class CategoriesSuccessView extends StatelessWidget {
  const CategoriesSuccessView({
    super.key,
    required this.categories,
    this.isLoading = false,
  });

  final List<Category> categories;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Categories', onTap: () {}),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: CategoriesListView(
            categories: categories,
            isLoading: isLoading,
          ),
        ),
      ],
    );
  }
}
