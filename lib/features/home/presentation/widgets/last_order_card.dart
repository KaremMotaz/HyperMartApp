import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/order_model.dart';
import 'offer_container.dart';
import 'order_content_widget.dart';

class LastOrderCard extends StatelessWidget {
  const LastOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderModel lastOrder = OrderModel.order;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivered",
                  style: AppStyles.bold10.copyWith(color: AppColors.turquoise),
                ),
                Text(
                  lastOrder.date,
                  style: AppStyles.regular10.copyWith(fontFamily: "Lato"),
                ),
                const SizedBox(height: 8),
                OrderContentWidget(lastOrder: lastOrder),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order ID : #${lastOrder.id}",
                          style: AppStyles.bold10,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Final Total : ₹ ${lastOrder.price}",
                          style: AppStyles.bold16,
                        ),
                      ],
                    ),
                    const SizedBox(width: 18),
                    AppTextButton(
                      buttonText: "Order Again",
                      onPressed: () {},
                      buttonWidth: 110,
                      buttonHeight: 45,
                      textStyle: AppStyles.bold12.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const OfferContainer(),
        ],
      ),
    );
  }
}
