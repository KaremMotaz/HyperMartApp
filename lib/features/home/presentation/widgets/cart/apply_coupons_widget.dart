import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';

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
    return Form(
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
          child: AppTextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },

            buttonText: "Apply",
            buttonHeight: 30,
            textStyle: AppStyles.medium14.copyWith(color: AppColors.black),
            backgroundColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}
