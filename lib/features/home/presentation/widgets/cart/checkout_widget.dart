import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/checkout_data.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            AppTextFormField(
              hintText: "Enter Discount Code",
              backgroundColor: const Color(0xfff6f6f6),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8),
                child: AppTextButton(
                  onPressed: () {},
                  buttonText: "Apply",
                  buttonHeight: 30,
                  textStyle: AppStyles.medium14.copyWith(
                    color: AppColors.black,
                  ),
                  backgroundColor: AppColors.white,
                ),
              ),
              validator: (value) => null,
            ),
            const SizedBox(height: 20),
            const CheckoutData(data: "Sub total", value: 225.00),
            const SizedBox(height: 10),
            const CheckoutData(data: "Descount", value: 25),
            Divider(height: 30, color: Colors.grey.shade400),
            const CheckoutData(data: "total", value: 200.00),
            const SizedBox(height: 20),
            AppTextButton(
              onPressed: () {},
              buttonWidth: double.infinity,
              buttonText: "Checkout",
              borderRadius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
