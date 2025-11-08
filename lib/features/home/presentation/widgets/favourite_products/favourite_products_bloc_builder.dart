import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/home/manager/favourite_products_cubit/favourite_products_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/favourite_products/empty_favourite_products_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/favourite_products/favourite_products_grid_view.dart';
import '../../../../../../core/widgets/error_body.dart';

class FavouriteProductsBlocBuilder extends StatelessWidget {
  const FavouriteProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteProductsCubit, FavouriteProductsState>(
      // buildWhen: (previous, current) => current is Success,
      builder: (context, state) {
        return state.maybeWhen(
          success: (favouriteProducts) {
            if (favouriteProducts.isEmpty) {
              return const EmptyFavouriteProductsWidget();
            }
            return FavouriteProductsGridView(
              favouriteProducts: favouriteProducts,
            );
          },
          failure: (cacheErrorModel) {
            return ErrorBody(
              message: cacheErrorModel.message,
              details: [cacheErrorModel.suggestion],
            );
          },
          deleteSuccess: () {
            return const EmptyFavouriteProductsWidget();
          },
          orElse: () {
            final favouriteProducts = context
                .watch<FavouriteProductsCubit>()
                .favouriteProducts;
            if (favouriteProducts.isEmpty) {
              return const EmptyFavouriteProductsWidget();
            }
            return FavouriteProductsGridView(
              favouriteProducts: favouriteProducts,
            );
          },
        );
      },
    );
  }
}
