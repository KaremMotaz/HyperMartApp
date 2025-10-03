import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/categories/manager/cubit/categories_cubit.dart';
import 'package:hyper_mart_app/presentation/home/presentation/widgets/categories_list_view.dart';
import 'section_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is CategoriesFailureState) {
          return Center(
            child: Column(
              children: [
                Text(state.message),
                ...state.details.map((detail) => Text(detail)),
              ],
            ),
          );
        } else if (state is CategoriesSuccessState) {
          return Column(
            children: [
              SectionHeader(title: 'Categories', onTap: () {}),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: CategoriesListView(
                  categories: state.categoriesResponse.categories,
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
