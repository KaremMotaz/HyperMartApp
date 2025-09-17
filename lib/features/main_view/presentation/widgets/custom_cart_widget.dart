import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';

class CustomCartWidget extends StatelessWidget {
  const CustomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 60,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.white, width: 5),
            color: ColorsManager.orange,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorsManager.darkgrey.withAlpha(150),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AssetsManager.cartIcon,
                  colorFilter: ColorFilter.mode(
                    ColorsManager.white,
                    BlendMode.srcIn,
                  ),
                ),
                Transform.translate(
                  offset: Offset(10, -8),
                  child: Center(
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsManager.white,
                          width: 2,
                        ),
                        color: ColorsManager.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
