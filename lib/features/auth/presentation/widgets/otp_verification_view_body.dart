import 'package:flutter/material.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'pin_input_form.dart';

class OTPVerificationViewBody extends StatelessWidget {
  const OTPVerificationViewBody({super.key, required this.userEmail});
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Image.asset(AppAssets.emailNotification, width: 130),
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Verify your email",
              style: AppStyles.bold22.copyWith(color: AppColors.mainBlue),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Enter the 6-digit code we sent to your email.",
              style: AppStyles.regular18,
            ),
          ),
          const SizedBox(height: 30),
          PinInputForm(userEmail: userEmail),
        ],
      ),
    );
  }
}
