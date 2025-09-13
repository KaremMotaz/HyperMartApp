import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/order_model.dart';

class OrderContentWidget extends StatelessWidget {
  const OrderContentWidget({super.key, required this.lastOrder});

  final OrderModel lastOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 11, bottom: 11,right: 15),
      decoration: BoxDecoration(
        color: ColorsManager.grey,
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
              Text(
                "+${lastOrder.items.length - 3}",
                style: TextStyles.medium12,
              ),
              Text(
                "More",
                style: TextStyles.medium12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
