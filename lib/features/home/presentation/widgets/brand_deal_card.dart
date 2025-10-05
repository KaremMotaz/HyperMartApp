import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/beauty_deals_model.dart';

class BrandDealCard extends StatelessWidget {
  const BrandDealCard({super.key, required this.beautyDeal});
  final BeautyDealsModel beautyDeal;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            width: 120,
            padding: const EdgeInsets.only(left: 13, right: 13, bottom: 30, top: 8),
            decoration: BoxDecoration(
              color: ColorsManager.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(beautyDeal.image, height: 50),
          ),
        ),
        Positioned(
          top: 60,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: ColorsManager.turquoise,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Up to",
                  style: TextStyles.bold10.copyWith(
                    color: ColorsManager.white,
                    fontFamily: "DM_Sans",
                  ),
                ),
                Text(
                  "${beautyDeal.discount}% OFF",
                  style: TextStyles.bold10.copyWith(
                    color: ColorsManager.white,
                    fontFamily: "DM_Sans",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
