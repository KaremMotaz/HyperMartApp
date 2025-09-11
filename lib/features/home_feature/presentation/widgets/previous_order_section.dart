import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';

class PreviousOrderSection extends StatelessWidget {
  const PreviousOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text("Previous order", style: TextStyles.bold16),
        ),
        SizedBox(height: 20),
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: ColorsManager.turquoise,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
