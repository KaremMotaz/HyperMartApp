import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'package:pinput/pinput.dart';

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
          style: TextStyles.bold20.copyWith(color: ColorsManager.mainBlue),
        ),
      ),
      errorBuilder: (errorText, pin) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              errorText ?? '',
              style: TextStyles.regular14.copyWith(color: ColorsManager.red),
            ),
          ),
        );
      },
      defaultPinTheme: PinTheme(
        width: 54,
        height: 54,
        textStyle: TextStyles.bold20.copyWith(color: ColorsManager.mainBlue),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.mainBlue, width: 2),
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
