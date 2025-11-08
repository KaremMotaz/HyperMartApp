import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/manager/favourite_products_cubit/favourite_products_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/favourite_products/favourite_products_bloc_builder.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite", style: AppStyles.bold22),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {
                context
                    .read<FavouriteProductsCubit>()
                    .removeAllFavouriteProducts();
              },
              icon: const Icon(Icons.delete_rounded, color: AppColors.red),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 12),
          child: FavouriteProductsBlocBuilder(),
        ),
      ),
    );
  }
}
