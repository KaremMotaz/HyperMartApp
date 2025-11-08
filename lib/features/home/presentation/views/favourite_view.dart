import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/favourite_products/favourite_products_bloc_builder.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favourite", style: AppStyles.bold22)),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
          child: Expanded(child: FavouriteProductsBlocBuilder()),
        ),
      ),
    );
  }
}
