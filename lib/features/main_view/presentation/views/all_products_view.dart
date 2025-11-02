import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/bloc_button.dart';
import '../../../home/manager/categories_cubit/categories_cubit.dart';
import '../../../home/data/models/categories/add_categories_request.dart';
import '../../../home/data/repo/get_categories_repo.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            CategoriesCubit(categoriesRepo: getIt.get<GetCategoriesRepo>()),
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocButton<CategoriesCubit, CategoriesState>(
                    onPressed: () {
                      context.read<CategoriesCubit>().addCategory(
                        body: AddCategoryRequest(
                          name: "Furniture",
                          description: "This is a furniture category",
                          coverPictureUrl:
                              "https://hagnlodahbmhpgvvtfkl.supabase.co/storage/v1/object/public/Categories/furniture.svg",
                        ),
                      );
                    },
                    label: "Add Category",
                    isLoading: (state) => state is CategoriesLoading,
                  ),
                  const SizedBox(height: 20),
                  BlocButton<CategoriesCubit, CategoriesState>(
                    onPressed: () {
                      context.read<CategoriesCubit>().deleteCategory(id: "");
                    },
                    label: "Delete Category",
                    isLoading: (state) => state is CategoriesLoading,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
