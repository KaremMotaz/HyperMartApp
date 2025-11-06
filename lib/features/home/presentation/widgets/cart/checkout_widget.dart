import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/apply_coupons_widget.dart';
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
            const ApplyCouponsWidget(),
            const SizedBox(height: 20),
            CheckoutData(
              data: "Sub total",
              value: context
                  .watch<CartCubit>()
                  .cartEntity
                  .calculateTotalBasePrice(),
            ),
            const SizedBox(height: 10),
            CheckoutData(
              data: "Discount",
              value: context
                  .watch<CartCubit>()
                  .cartEntity
                  .calculateDiscountPrice(),
            ),
            Divider(height: 30, color: Colors.grey.shade400),
            CheckoutData(
              data: "total",
              value: context
                  .watch<CartCubit>()
                  .cartEntity
                  .calculateTotalPrice(),
            ),
            const SizedBox(height: 20),
            AppTextButton(
              onPressed: () {
                context.push(
                  Routes.checkoutView,
                  extra: context.read<CartCubit>(),
                );
              },
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
