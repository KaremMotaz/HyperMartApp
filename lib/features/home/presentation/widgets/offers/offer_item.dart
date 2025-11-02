import 'package:flutter/material.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.asset(AppAssets.weekOfferImage, fit: BoxFit.fill),
          Image.asset(AppAssets.maskOfferImage, fit: BoxFit.fill),
          const Positioned(
            bottom: 55,
            left: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Happy Weekend", style: AppStyles.medium12),
                Text("25% OFF", style: AppStyles.extraBold22),
                Text("*for All Menus", style: AppStyles.light10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
