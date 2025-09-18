import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/forgot_password_otp_form.dart';

class ForgotPasswordOTPViewBody extends StatelessWidget {
  const ForgotPasswordOTPViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            const Text('Check your email', style: TextStyles.semiBold20),
            const SizedBox(height: 12),
            Text(
              'We sent a reset link to contact@dscode...com\nenter 6 digit code that mentioned in the email',
              style: TextStyles.semiBold15.copyWith(
                color: ColorsManager.darkergrey,
              ),
            ),
            const SizedBox(height: 30),
            const ForgotPasswordOTPForm(),
          ],
        ),
      ),
    );
  }
}
