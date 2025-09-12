import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorsManager.turquoise,
          child: SvgPicture.asset(
            AssetsManager.locationIcon,
            colorFilter: ColorFilter.mode(ColorsManager.white, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bengaluru",style: TextStyles.regular10,),
            SizedBox(height: 5),
            Text("BTM Layout, 500628",style: TextStyles.regular12,),
          ],
        ),
        Spacer(),
        SvgPicture.asset(AssetsManager.arrowRightIcon)
      ],
    );
  }
}
