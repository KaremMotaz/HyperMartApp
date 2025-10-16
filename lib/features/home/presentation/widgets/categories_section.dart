import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/error_body.dart';
import '../../../categories/data/models/get_categories_response.dart';
import '../../../categories/manager/categories_cubit/categories_cubit.dart';
import 'categories_success_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        state.when(
          categoriesInitial: () {},
          categoriesLoading: () {
            return CategoriesSuccessView(
              categories: Category.dummyCategories,
              isLoading: true,
            );
          },
          categoriesDeleteLoading: () {},
          categoriesUpdateLoading: () {},
          categoriesGetByIdLoading: () {},
          categoriesAddLoading: () {},
          categoriesGetSuccess: (getCategoriesResponse) {
            return CategoriesSuccessView(
              categories: getCategoriesResponse.categories,
            );
          },
          categoriesGetByIdSuccess: (getCategoryByIdResponse) {},
          categoriesUpdateSuccess: (updateCategoryResponse) {},
          categoriesAddSuccess: (addCategoryResponse) {},
          categoriesDeleteSuccess: () {},
          categoriesFailure: (apiErrorModel) {
            return ErrorBody(
              message: apiErrorModel.message,
              details: apiErrorModel.details ?? [],
            );
          },
        );
        return const SizedBox.shrink();
      },
    );
  }
}
