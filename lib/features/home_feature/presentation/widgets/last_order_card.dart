import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
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
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.lightGrey,
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
                  style: TextStyles.bold10.copyWith(
                    color: ColorsManager.turquoise,
                  ),
                ),
                Text(
                  lastOrder.date,
                  style: TextStyles.regular10.copyWith(fontFamily: "Lato"),
                ),
                SizedBox(height: 8),
                OrderContentWidget(lastOrder: lastOrder),
                SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order ID : #${lastOrder.id}",
                          style: TextStyles.bold10,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Final Total : ₹ ${lastOrder.price}",
                          style: TextStyles.bold16,
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    AppTextButton(
                      buttonText: "Order Again",
                      onPressed: () {},
                      buttonWidth: 110,
                      buttonHeight: 45,
                      textStyle: TextStyles.bold12.copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          OfferContainer(),
        ],
      ),
    );
  }
}
