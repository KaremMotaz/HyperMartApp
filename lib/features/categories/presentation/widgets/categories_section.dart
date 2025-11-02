import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/categories/data/repos/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/manager/categories_cubit/categories_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/categories_body.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoriesCubit(categoriesRepo: getIt.get<CategoriesRepo>())
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
