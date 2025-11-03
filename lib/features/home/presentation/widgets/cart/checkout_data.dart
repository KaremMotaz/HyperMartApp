import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class CheckoutData extends StatelessWidget {
  const CheckoutData({super.key, required this.data, required this.value});
  final String data;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$data :",
          style: AppStyles.regular16.copyWith(color: Colors.grey.shade600),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "\$$value",
          style: AppStyles.semiBold16,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
