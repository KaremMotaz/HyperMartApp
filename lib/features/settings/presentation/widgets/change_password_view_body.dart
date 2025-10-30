import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'change_password_form.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

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
            const Text('Change password', style: AppStyles.semiBold20),
            const SizedBox(height: 12),
            Text(
              'Please enter your current password',
              style: AppStyles.semiBold15.copyWith(color: AppColors.darkergrey),
            ),
            const SizedBox(height: 20),
            const ChangePasswordForm(),
          ],
        ),
      ),
    );
  }
}
