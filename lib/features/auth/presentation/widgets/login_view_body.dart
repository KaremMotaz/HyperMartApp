import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'dont_have_an_account.dart';
import 'login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: AppStyles.bold20.copyWith(color: AppColors.mainBlue),
            ),
            Text(
              "Welcome back please enter your details",
              style: AppStyles.medium15.copyWith(color: AppColors.darkergrey),
            ),
            const SizedBox(height: 32),
            const LoginForm(),
            const SizedBox(height: 25),
            const DontHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
