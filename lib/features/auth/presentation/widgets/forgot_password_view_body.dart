import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/forgot_password_form.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18),
              Text('Forgot password', style: TextStyles.semiBold20),
              SizedBox(height: 12),
              Text(
                'Please enter your email to reset the password',
                style: TextStyles.semiBold15.copyWith(
                  color: ColorsManager.darkergrey,
                ),
              ),
              SizedBox(height: 30),
              Text('Your Email', style: TextStyles.semiBold16),
              SizedBox(height: 8),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
