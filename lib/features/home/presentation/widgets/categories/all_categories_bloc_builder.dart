import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/error_body.dart';
import '../../../data/models/categories/get_categories_response.dart';
import '../../../manager/categories_cubit/categories_cubit.dart';
import 'categories_grid_view.dart';

class AllCategoriesBlocBuilder extends StatelessWidget {
  const AllCategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is GetCategoriesSuccess ||
          current is CategoriesFailure,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return CategoriesGridView(
              categories: Category.dummyCategories,
              isLoading: true,
            );
          },
          categoriesGetSuccess: (getCategoriesResponse) {
            return CategoriesGridView(
              categories: getCategoriesResponse.categories,
            );
          },
          categoriesFailure: (apiErrorModel) {
            return ErrorBody(
              message: apiErrorModel.message,
              details: apiErrorModel.details ?? [],
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
