import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';
import 'last_order_card.dart';

class PreviousOrderSection extends StatelessWidget {
  const PreviousOrderSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
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

