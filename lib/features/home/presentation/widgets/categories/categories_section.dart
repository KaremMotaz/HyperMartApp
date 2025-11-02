import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/services/get_it_service.dart';
import '../../../manager/categories_cubit/categories_cubit.dart';
import '../../../data/repo/get_categories_repo.dart';
import 'categories_body.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoriesCubit(categoriesRepo: getIt.get<GetCategoriesRepo>())
            ..getCategories(),
      child: InkWell(
        onTap: () {
          context.push(Routes.categoriesView);
        },
        child: const CategoriesBody(),
      ),
    );
  }
}
