import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/checkout_data.dart';

class CheckoutTotalSection extends StatelessWidget {
  const CheckoutTotalSection({
    super.key,
    this.title,
    this.discount,
    required this.total,
  });

  final String? title;
  final double? discount;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null && discount != null)
          CheckoutData(data: title!, value: discount!),
        Divider(height: 30, color: Colors.grey.shade400),
        CheckoutData(data: "total", value: total),
      ],
    );
  }
}
