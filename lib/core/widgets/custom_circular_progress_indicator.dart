import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 21,
      height: 21,
      child: const CircularProgressIndicator(color: ColorsManager.white),
    );
  }
}
