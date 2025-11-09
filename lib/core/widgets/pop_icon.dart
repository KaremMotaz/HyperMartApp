import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopIcon extends StatelessWidget {
  const PopIcon({super.key, this.backButtonBorderColor});
  final Color? backButtonBorderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: backButtonBorderColor ?? Colors.white),
        ),
        child: const Icon(Icons.arrow_back, color: Colors.black, size: 26),
      ),
    );
  }
}
