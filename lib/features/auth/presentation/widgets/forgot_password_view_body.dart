import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'forgot_password_form.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Forgot password', style: TextStyles.semiBold20),
            const SizedBox(height: 12),
            Text(
              'Please enter your email to reset the password',
              style: TextStyles.semiBold15.copyWith(
                color: ColorsManager.darkergrey,
              ),
            ),
            const SizedBox(height: 30),
            const Text('Your Email', style: TextStyles.semiBold16),
            const SizedBox(height: 8),
            const ForgotPasswordForm(),
          ],
        ),
      ),
    );
  }
}
