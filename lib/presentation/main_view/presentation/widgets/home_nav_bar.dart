import 'package:flutter/material.dart';

import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';
import 'custom_cart_widget.dart';
import 'nav_widget.dart';

class HomeNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const HomeNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      AssetsManager.homeIcon,
      AssetsManager.allProductsIcon,
      AssetsManager.favouriteIcon,
      AssetsManager.profileIcon,
    ];

    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomAppBar(
          color: ColorsManager.white,
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
          elevation: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              icons.length,
              (index) => GestureDetector(
                onTap: () => onTap(index),
                child: Padding(
                  padding: index == 1
                      ? const EdgeInsets.only(right: 50)
                      : EdgeInsets.zero,
                  child: NavWidget(
                    selectedIndex: selectedIndex,
                    icons: icons,
                    index: index,
                  ),
                ),
              ),
            ),
          ),
        ),
        const CustomCartWidget(),
      ],
    );
  }
}
