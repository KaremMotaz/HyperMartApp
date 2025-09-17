import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 18,
        backgroundColor: ColorsManager.lightGrey,
        child: SvgPicture.asset(
          AssetsManager.notificationIcon,
          colorFilter: ColorFilter.mode(ColorsManager.red, BlendMode.srcIn),
          width: 22,
          height: 22,
        ),
      ),
    );
  }
}
