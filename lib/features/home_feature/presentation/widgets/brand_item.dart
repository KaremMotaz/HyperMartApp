import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brandItem});
  final String brandItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(brandItem, width: 100),
    );
  }
}
