import 'package:flutter/material.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/text_styles.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.asset(AssetsManager.weekOfferImage, fit: BoxFit.fill),
          Image.asset(AssetsManager.maskOfferImage, fit: BoxFit.fill),
          Positioned(
            bottom: 28,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Happy Weekend", style: TextStyles.medium10),
                Text("25% OFF", style: TextStyles.extraBold20),
                Text("*for All Menus", style: TextStyles.light10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
