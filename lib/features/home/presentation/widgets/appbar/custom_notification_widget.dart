import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 18,
        backgroundColor: AppColors.lightGrey,
        child: SvgPicture.asset(
          AppAssets.notificationIcon,
          colorFilter: const ColorFilter.mode(AppColors.red, BlendMode.srcIn),
          width: 22,
          height: 22,
        ),
      ),
    );
  }
}
