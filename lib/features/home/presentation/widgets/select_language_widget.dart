import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const Text("Eng", style: AppStyles.regular12),
          const SizedBox(width: 5),
          SvgPicture.asset(AppAssets.arrowDownIcon),
        ],
      ),
    );
  }
}
