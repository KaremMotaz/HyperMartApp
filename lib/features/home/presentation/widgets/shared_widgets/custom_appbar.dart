import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theming/app_styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.backButtonBorderColor = Colors.grey,
  });

  final String title;
  final Color? backButtonBorderColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.pop(),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: backButtonBorderColor ?? Colors.grey),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.black, size: 26),
          ),
        ),
        const Spacer(),
        Text(title, style: AppStyles.bold22),
        const Spacer(),
      ],
    );
  }
}
