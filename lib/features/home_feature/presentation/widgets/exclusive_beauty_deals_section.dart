import 'package:flutter/material.dart';
import '../../../../core/theming/assets_manager.dart';
import 'brand_deal_card.dart';
import 'section_header.dart';

class ExclusiveBeautyDealsSection extends StatelessWidget {
  const ExclusiveBeautyDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brandDealItems = [
      AssetsManager.brandDeal1Image,
      AssetsManager.brandDeal2Image,
      AssetsManager.brandDeal3Image,
      AssetsManager.brandDeal4Image,
      AssetsManager.brandDeal5Image,
      AssetsManager.brandDeal6Image,
    ];
    return Column(
      children: [
        SectionHeader(title: 'Exclusive Beauty Deals', onTap: () {}),
        SizedBox(height: 20),
        SizedBox(
          height: 310,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 70,
              childAspectRatio: 1.17,
            ),
            itemCount: 6,
            itemBuilder: (context, index) =>
                BrandDealCard(brandDealItem: brandDealItems[index]),
          ),
        ),
      ],
    );
  }
}
