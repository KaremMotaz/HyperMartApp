import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../manager/categories_cubit/categories_cubit.dart';
import '../../data/repo/categories_repo.dart';
import '../widgets/categories/all_categories_bloc_builder.dart';
import '../widgets/categories/categories_appbar.dart';

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
