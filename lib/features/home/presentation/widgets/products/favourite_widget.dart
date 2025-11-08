import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/helpers/logger.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/manager/favourite_products_cubit/favourite_products_cubit.dart';
import '../../../../../core/theming/app_assets.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FavouriteProductsCubit>();

    return BlocBuilder<FavouriteProductsCubit, FavouriteProductsState>(
      builder: (context, state) {
        bool isFav = false;
        Logger.log(isFav.toString());
        // get the favourite status from state
        state.maybeWhen(
          success: (favouriteProducts) {
            isFav = favouriteProducts.any((p) => p.id == productModel.id);
          },
          orElse: () {},
        );

        return Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              cubit.toggleFavouriteProduct(product: productModel);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 11, top: 11),
              child: SvgPicture.asset(
                isFav ? AppAssets.heartFullIcon : AppAssets.heartOutlineIcon,
                width: 20,
                height: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
