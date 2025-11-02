import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/home/data/repo/get_products_repo.dart';
import 'package:hyper_mart_app/features/home/manager/products_cubit/products_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/products_bloc_builder.dart';
import '../other/section_header.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getProductsRepo: getIt.get<GetProductsRepo>())
            ..getProducts(),
      child: Column(
        children: [
          SectionHeader(
            title: 'Popular Deals',
            onTap: () {
              context.push(Routes.productsView);
            },
          ),
          const SizedBox(height: 20),
          const ProductsBlocBuilder(height: 690),
        ],
      ),
    );
  }
}
