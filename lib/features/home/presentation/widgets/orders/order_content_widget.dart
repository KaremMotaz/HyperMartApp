import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/orders/order_model.dart';

class OrderContentWidget extends StatelessWidget {
  const OrderContentWidget({super.key, required this.lastOrder});

  final OrderModel lastOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 11, bottom: 11, right: 15),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemBuilder: (context, index) {
                return Image.asset(lastOrder.items[index]);
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("+${lastOrder.items.length - 3}", style: AppStyles.medium12),
              const Text("More", style: AppStyles.medium12),
            ],
          ),
        ],
      ),
    );
  }
}
