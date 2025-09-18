import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/reset_password_form.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

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
