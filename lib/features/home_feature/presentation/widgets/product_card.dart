import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.lightGrey),
        borderRadius: BorderRadius.circular(16),
        color: ColorsManager.white,
      ),
      child: Column(
        children: [
          
          Image.asset(AssetsManager.strawberryImage),
        ],
      ),
    );
  }
}