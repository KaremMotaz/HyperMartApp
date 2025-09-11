import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.asset(AssetsManager.weekOfferImage),
          Image.asset(AssetsManager.maskOfferImage),
          Positioned(
            bottom: 44,
            left: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Happy Weekend", style: TextStyles.medium12),
                Text("25% OFF", style: TextStyles.extraBold22),
                Text("*for All Menus", style: TextStyles.light10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
