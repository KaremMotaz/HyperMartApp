import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'forgot_password_otp_form.dart';

class ForgotPasswordOTPViewBody extends StatelessWidget {
  const ForgotPasswordOTPViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final String email =
        BlocProvider.of<ForgotPasswordCubit>(context).email ?? "";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Check your email', style: TextStyles.semiBold20),
            const SizedBox(height: 12),
            Text(
              'We sent a reset link to your email :',
              style: TextStyles.semiBold15.copyWith(
                color: ColorsManager.darkergrey,
              ),
            ),
            const SizedBox(height: 6),
            Center(
              child: Text(
                email,
                style: TextStyles.semiBold15.copyWith(
                  color: ColorsManager.darkergrey,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Enter 6 digit code that mentioned in the email',
              style: TextStyles.semiBold15.copyWith(
                color: ColorsManager.mainBlue,
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
