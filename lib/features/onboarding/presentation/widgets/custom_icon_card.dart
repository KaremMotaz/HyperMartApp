import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconCard extends StatelessWidget {
  const CustomIconCard({
    super.key,
    required this.iconPath,
    required this.iconColor,
  });

  final String iconPath;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 15,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
    );
  }
}
