import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';

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
            border: Border.all(color: AppColors.white, width: 5),
            color: AppColors.orange,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.darkgrey.withAlpha(150),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.cartIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(10, -8),
                  child: Center(
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.white, width: 2),
                        color: AppColors.red,
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
