import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../manager/resend_otp_cubit/resend_otp_cubit.dart';

class ResendOTPEmailWidget extends StatelessWidget {
  const ResendOTPEmailWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final String email =
        BlocProvider.of<ForgotPasswordCubit>(context).email ?? "";
    return IgnorePointer(
      ignoring: context.watch<ResendOtpCubit>().state is ResendOtpLoading,
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: "Haven’t got the email yet?",
              style: AppStyles.semiBold15.copyWith(color: AppColors.darkergrey),
            ),
            const TextSpan(text: " "),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.read<ResendOtpCubit>().resendOtp(email: email);
                },
              text: "Resend email",
              style: AppStyles.semiBold15.copyWith(
                color: context.watch<ResendOtpCubit>().state is ResendOtpLoading
                    ? AppColors.darkergrey
                    : AppColors.mainBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
