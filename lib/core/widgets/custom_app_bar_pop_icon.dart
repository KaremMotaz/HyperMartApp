import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theming/app_colors.dart';

class CustomAppBarPopIcon extends StatelessWidget {
  const CustomAppBarPopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: AppColors.mainGreyShade600,
        size: 18,
      ),
      onPressed: () => GoRouter.of(context).pop(),
    );
  }
}
