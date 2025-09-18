import 'package:flutter/material.dart';

import '../../data/models/beauty_deals_model.dart';
import 'brand_deal_card.dart';
import 'section_header.dart';

class ExclusiveBeautyDealsSection extends StatelessWidget {
  const ExclusiveBeautyDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BeautyDealsModel> beautyDeals = BeautyDealsModel.beautyDeals;
    return Column(
      children: [
        SectionHeader(title: 'Exclusive Beauty Deals', onTap: () {}),
        const SizedBox(height: 20),
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
                BrandDealCard(beautyDeal: beautyDeals[index]),
          ),
        ),
      ],
    );
  }
}
