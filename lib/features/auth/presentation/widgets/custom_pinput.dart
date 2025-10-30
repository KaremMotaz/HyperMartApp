import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomPinput extends StatelessWidget {
  const CustomPinput({super.key, required this.otpController});

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      controller: otpController,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      preFilledWidget: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          '*',
          style: AppStyles.bold20.copyWith(color: AppColors.mainBlue),
        ),
      ),
      errorBuilder: (errorText, pin) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              errorText ?? '',
              style: AppStyles.regular14.copyWith(color: AppColors.red),
            ),
          ),
        );
      },
      defaultPinTheme: PinTheme(
        width: 54,
        height: 54,
        textStyle: AppStyles.bold20.copyWith(color: AppColors.mainBlue),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.mainBlue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your pin';
        }
        return null;
      },
    );
  }
}
