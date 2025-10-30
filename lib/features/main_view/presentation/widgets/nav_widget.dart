import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({
    super.key,
    required this.selectedIndex,
    required this.icons,
    required this.index,
  });

  final int selectedIndex;
  final int index;
  final List<String> icons;
  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    return SvgPicture.asset(
      icons[index],
      width: 24,
      colorFilter: ColorFilter.mode(
        isSelected ? AppColors.orange : AppColors.darkgrey,
        BlendMode.srcIn,
      ),
    );
  }
}
