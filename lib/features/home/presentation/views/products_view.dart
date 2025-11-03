import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../data/repos/get_products_repo.dart';
import '../../manager/products_cubit/products_cubit.dart';
import '../widgets/other/custom_appbar.dart';
import '../widgets/products/all_products_bloc_builder.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CustomAppbar(title: "Products"),
              const SizedBox(height: 20),
              BlocProvider(
                create: (context) =>
                    ProductsCubit(getProductsRepo: getIt.get<GetProductsRepo>())
                      ..getProducts(),
                child: const AllProductsBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
