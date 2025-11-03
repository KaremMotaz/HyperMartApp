import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/manager/products_cubit/products_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/products/products_grid_view.dart';
import '../../../../../core/widgets/error_body.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) =>
          current is GetProductsLoading ||
          current is GetProductsSuccess ||
          current is GetProductsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          getProductsLoading: () {
            return SizedBox(
              height: 690,
              child: ProductsGridView(
                products: ProductModel.dummyProducts,
                isLoading: true,
                isScrollable: true,
              ),
            );
          },
          getProductsSuccess: (getProductsResponse) {
            final List<ProductModel> limitedProducts = getProductsResponse.items
                .take(4)
                .toList();
            return SizedBox(
              height: 690,
              child: ProductsGridView(
                products: limitedProducts,
                isScrollable: true,
              ),
            );
          },
          getProductsFailure: (apiErrorModel) {
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
    );
  }
}
