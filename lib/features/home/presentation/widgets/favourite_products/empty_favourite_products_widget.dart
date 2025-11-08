import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class EmptyFavouriteProductsWidget extends StatelessWidget {
  const EmptyFavouriteProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Image.asset(AppAssets.emptyFavorites),
        ),
        Transform.translate(
          offset: const Offset(0, -15),
          child: const Column(
            children: [
              Text("No Favourite Products Yet", style: AppStyles.bold22),
              Text(
                "Add Something to make me happy",
                style: AppStyles.regular14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
