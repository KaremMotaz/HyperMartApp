import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.turquoise,
          child: SvgPicture.asset(
            AppAssets.locationIcon,
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bengaluru", style: AppStyles.regular10),
            SizedBox(height: 5),
            Text("BTM Layout, 500628", style: AppStyles.regular12),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(AppAssets.arrowRightIcon),
      ],
    );
  }
}
