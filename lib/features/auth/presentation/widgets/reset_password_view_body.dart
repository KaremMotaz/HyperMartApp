import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'reset_password_form.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

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
            const Text('Set a new password', style: TextStyles.semiBold20),
            const SizedBox(height: 12),
            Text(
              'Create a new password. Ensure it differs from previous ones for security',
              style: TextStyles.semiBold15.copyWith(
                color: ColorsManager.darkergrey,
              ),
            ),
            const SizedBox(height: 30),
            const ResetPasswordForm(),
          ],
        ),
      ),
    );
  }
}
