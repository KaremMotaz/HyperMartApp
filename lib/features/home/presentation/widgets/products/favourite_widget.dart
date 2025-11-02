import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({super.key, required this.isLoved});

  final bool isLoved;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 11, top: 11),
        child: SvgPicture.asset(
          isLoved ? AppAssets.heartFullIcon : AppAssets.heartOutlineIcon,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
