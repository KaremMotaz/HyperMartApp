import 'package:flutter/material.dart';
import '../../../settings/presentation/views/settings_view.dart';
import '../../../home_feature/presentation/views/home_view.dart';
import '../views/all_products_view.dart';
import '../views/favourite_view.dart';

class MainPageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;

  const MainPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: const [
        HomeView(),
        AllProductsView(),
        FavouriteView(),
        SettingsView(),
      ],
    );
  }
}
