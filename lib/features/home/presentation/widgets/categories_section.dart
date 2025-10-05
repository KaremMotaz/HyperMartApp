import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/error_body.dart';
import '../../../categories/data/models/get_categories_model.dart';
import '../../../categories/manager/categories_cubit/categories_cubit.dart';
import 'categories_success_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoadingState) {
          return CategoriesSuccessView(
            categories: Category.dummyCategories,
            isLoading: true,
          );
        }
        if (state is CategoriesFailureState) {
          return ErrorBody(message: state.message, details: state.details);
        } else if (state is GetCategoriesSuccessState) {
          return CategoriesSuccessView(
            categories: state.categoriesResponse.categories,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
