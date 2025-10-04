import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
import 'package:hyper_mart_app/presentation/home/presentation/widgets/categories_list_view.dart';
import 'package:hyper_mart_app/presentation/home/presentation/widgets/section_header.dart';

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
