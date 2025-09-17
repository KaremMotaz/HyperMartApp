import 'package:flutter/material.dart';

import '../../../home_feature/presentation/views/home_view.dart';
import '../all_products_view.dart';
import '../favourite_view.dart';
import '../profile_view.dart';

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
      children: [
        const HomeView(),
        const AllProductsView(),
        const FavouriteView(),
        const ProfileView(),
      ],
    );
  }
}
