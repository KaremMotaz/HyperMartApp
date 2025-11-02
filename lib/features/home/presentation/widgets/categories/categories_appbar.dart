import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theming/app_styles.dart';

class CategoriesAppbar extends StatelessWidget {
  const CategoriesAppbar({super.key});

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
              border: Border.all(color: Colors.grey),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.black, size: 26),
          ),
        ),
        const Spacer(),
        const Text('Categories', style: AppStyles.bold22),
        const Spacer(),
      ],
    );
  }
}
