import 'package:flutter/material.dart';

import '../../../../../core/theming/app_assets.dart';
import '../shared_widgets/section_header.dart';
import 'brand_item.dart';

class TopBrandsSection extends StatelessWidget {
  const TopBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brandItems = [
      AppAssets.brand1Image,
      AppAssets.brand2Image,
      AppAssets.brand3Image,
      AppAssets.brand4Image,
    ];

    return Column(
      children: [
        SectionHeader(title: 'Top Brands', onTap: () {}),
        const SizedBox(height: 20),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: brandItems.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return BrandItem(brandItem: brandItems[index]);
            },
          ),
        ),
      ],
    );
  }
}
