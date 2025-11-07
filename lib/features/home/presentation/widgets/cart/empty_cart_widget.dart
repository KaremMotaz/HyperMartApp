import 'package:flutter/material.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Image.asset(AppAssets.emptyCart),
        ),
        Transform.translate(
          offset: const Offset(0, -15),
          child: const Column(
            children: [
              Text("Your cart is empty", style: AppStyles.bold22),
              Text(
                "Add Something to make me happy",
                style: AppStyles.regular14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
