import 'package:flutter/material.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';
import 'pin_input_form.dart';
import '../../../../core/theming/text_styles.dart';

class OTPVerificationViewBody extends StatelessWidget {
  const OTPVerificationViewBody({super.key, required this.userEmail});
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Image.asset(AssetsManager.emailNotification, width: 130),
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Verify your email",
              style: TextStyles.bold22.copyWith(color: ColorsManager.mainBlue),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Enter the 6-digit code we sent to your email.",
              style: TextStyles.regular18,
            ),
          ),
          const SizedBox(height: 30),
          PinInputForm(userEmail: userEmail),
        ],
      ),
    );
  }
}
