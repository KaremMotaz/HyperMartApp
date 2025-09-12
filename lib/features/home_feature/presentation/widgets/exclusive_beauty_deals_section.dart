import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/brand_deal_card.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/section_header.dart';

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
          height: 300,
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
