import 'package:flutter/material.dart';
import '../../../../core/theming/assets_manager.dart';
import 'brand_item.dart';
import 'section_header.dart';

class TopBrandsSection extends StatelessWidget {
  const TopBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brandItems = [
      AssetsManager.brand1Image,
      AssetsManager.brand2Image,
      AssetsManager.brand3Image,
      AssetsManager.brand4Image,
    ];

    return Column(
      children: [
        SectionHeader(title: 'Top Brands', onTap: () {}),
        SizedBox(height: 20),
        SizedBox(
          height: 50,
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
