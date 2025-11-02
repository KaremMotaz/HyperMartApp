import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'categories_list_view.dart';
import 'section_header.dart';
import '../../../../core/widgets/error_body.dart';
import '../../../categories/data/models/get_categories_response.dart';
import '../../../categories/manager/categories_cubit/categories_cubit.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Categories',
          onTap: () {
            context.push(Routes.categoriesView);
          },
        ),
        const SizedBox(height: 20),
        BlocBuilder<CategoriesCubit, CategoriesState>(
          buildWhen: (previous, current) =>
              current is CategoriesLoading ||
              current is GetCategoriesSuccess ||
              current is CategoriesFailure,
          builder: (context, state) {
            return state.maybeWhen(
              categoriesLoading: () {
                return CategoriesListView(
                  categories: Category.dummyCategories,
                  isLoading: true,
                );
              },
              categoriesGetSuccess: (getCategoriesResponse) {
                return CategoriesListView(
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
        ),
      ],
    );
  }
}
