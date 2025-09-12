import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/section_header.dart';

class ExclusiveBeautyDealsSection extends StatelessWidget {
  const ExclusiveBeautyDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: 'Exclusive Beauty Deals', onTap: () {}),
        SizedBox(height: 20),
      ],
    );
  }
}