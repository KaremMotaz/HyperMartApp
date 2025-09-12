import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';

class BrandDealCard extends StatelessWidget {
  const BrandDealCard({super.key, required this.brandDealItem});
  final String brandDealItem;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            decoration: BoxDecoration(
              color: ColorsManager.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(children: [Image.asset(brandDealItem, height: 50)]),
          ),
        ),
        Positioned(
          top: 60,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: ColorsManager.turquoise,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Up to",
                  style: TextStyles.bold14.copyWith(color: ColorsManager.white),
                ),
                Text(
                  "5% OFF",
                  style: TextStyles.bold14.copyWith(color: ColorsManager.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
