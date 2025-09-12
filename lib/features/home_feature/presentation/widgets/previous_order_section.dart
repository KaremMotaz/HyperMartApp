import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/last_order_card.dart';

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
        LastOrderCard(),
      ],
    );
  }
}

