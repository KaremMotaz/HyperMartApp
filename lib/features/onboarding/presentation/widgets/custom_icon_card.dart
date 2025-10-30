import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconCard extends StatelessWidget {
  const CustomIconCard({
    super.key,
    required this.iconPath,
    required this.color,
  });

  final String iconPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 40,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }
}
