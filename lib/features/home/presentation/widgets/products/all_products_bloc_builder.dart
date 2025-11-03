import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/Products/get_products_response.dart';
import '../../../manager/products_cubit/products_cubit.dart';
import 'products_grid_view.dart';
import '../../../../../core/widgets/error_body.dart';

class AllProductsBlocBuilder extends StatelessWidget {
  const AllProductsBlocBuilder({super.key});

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
            return Expanded(
              child: ProductsGridView(
                products: ProductModel.dummyProducts,
                isLoading: true,
              ),
            );
          },
          getProductsSuccess: (getProductsResponse) {
            return Expanded(
              child: ProductsGridView(products: getProductsResponse.items),
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
