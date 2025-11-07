import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';
import 'package:hyper_mart_app/core/widgets/bloc_button.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';

class ApplyCouponsWidget extends StatefulWidget {
  const ApplyCouponsWidget({super.key});

  @override
  State<ApplyCouponsWidget> createState() => _ApplyCouponsWidgetState();
}

class _ApplyCouponsWidgetState extends State<ApplyCouponsWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController couponsController = TextEditingController();

  @override
  void dispose() {
    couponsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        state.whenOrNull(
          applyCouponSuccess: (applyCouponSuccessResponse) {
            return successSnackBar(
              context: context,
              message: "Coupon applied successfully",
            );
          },
          applyCouponFailure: (apiErrorModel) {
            return errorDialog(context: context, apiErrorModel: apiErrorModel);
          },
        );
      },
      child: Form(
        key: _formKey,
        child: AppTextFormField(
          hintText: "Enter Discount Code",
          backgroundColor: const Color(0xfff6f6f6),
          controller: couponsController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your discount code';
            }
            return null;
          },
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: BlocButton<CartCubit, CartState>(
              label: "Apply",
              isLoading: (state) => state is ApplyCouponLoading,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<CartCubit>().applyCoupon(
                    couponCode: couponsController.text,
                  );
                  couponsController.clear();
                }
              },
              buttonWidth: 70,
              buttonHeight: 30,
              textStyle: AppStyles.medium14.copyWith(color: AppColors.black),
              backgroundColor: AppColors.white,
              indicatorColor: AppColors.mainBlue,
              indicatorSize: 15,
              verticalPadding: 0,
            ),
          ),
        ),
      ),
    );
  }
}
