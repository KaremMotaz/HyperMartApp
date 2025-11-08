import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/apply_coupons_widget.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/checkout_data.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/checkout_total_section.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (prev, curr) => curr is ApplyCouponSuccess || curr is Initial,
      builder: (context, state) {
        final cartCubit = context.read<CartCubit>();
        final cart = cartCubit.cartEntity;

        final bool couponApplied = state is ApplyCouponSuccess;

        final double targetSize = couponApplied ? 0.5 : 0.45;

        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.45, end: targetSize),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          builder: (context, animatedSize, child) {
            return DraggableScrollableSheet(
              initialChildSize: animatedSize,
              minChildSize: 0.15,
              maxChildSize: animatedSize,
              builder: (context, scrollController) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 5,
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const ApplyCouponsWidget(),
                      const SizedBox(height: 20),

                      CheckoutData(
                        data: "Sub total",
                        value: cart.calculateTotalBasePrice(),
                      ),
                      const SizedBox(height: 10),
                      CheckoutData(
                        data: "Discount",
                        value: cart.calculateDiscountPrice(),
                      ),

                      state.maybeWhen(
                        applyCouponSuccess: (response) => CheckoutTotalSection(
                          title: "Coupon Discount",
                          discount: response.discountAmount.toDouble(),
                          total: response.finalTotal.toDouble(),
                        ),
                        orElse: () => CheckoutTotalSection(
                          total: cart.calculateTotalPrice(),
                        ),
                      ),

                      const SizedBox(height: 20),
                      AppTextButton(
                        onPressed: () {
                          context.push(Routes.checkoutView, extra: cartCubit);
                        },
                        buttonWidth: double.infinity,
                        buttonText: "Checkout",
                        borderRadius: 20,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
