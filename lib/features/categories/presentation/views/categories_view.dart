import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/categories/data/repos/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/manager/categories_cubit/categories_cubit.dart';
import 'package:hyper_mart_app/features/categories/presentation/widgets/categories_appbar.dart';
import 'package:hyper_mart_app/features/categories/presentation/widgets/all_categories_bloc_builder.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CategoriesAppbar(),
              const SizedBox(height: 20),
              BlocProvider(
                create: (context) =>
                    CategoriesCubit(categoriesRepo: getIt.get<CategoriesRepo>())
                      ..getCategories(),
                child: const AllCategoriesBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
