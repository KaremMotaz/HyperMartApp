import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class ReviewsChartItem extends StatelessWidget {
  const ReviewsChartItem({
    super.key,
    required this.star,
    required this.percent,
  });

  final int star;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text('$star', style: AppStyles.semiBold15),
        const SizedBox(width: 10),
        SizedBox(
          width: screenWidth * 0.42,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: percent,
              color: Colors.amber,
              backgroundColor: Colors.grey.shade300,
              minHeight: 10,
            ),
          ),
        ),
      ],
    );
  }
}
