import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class ResendOTPEmailWidget extends StatelessWidget {
  const ResendOTPEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "Haven’t got the email yet?",
            style: TextStyles.semiBold15.copyWith(
              color: ColorsManager.darkergrey,
            ),
          ),
          const TextSpan(text: " "),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<ForgotPasswordCubit>().resendOtp();
              },
            text: "Resend email",
            style: TextStyles.semiBold15.copyWith(
              color: ColorsManager.mainBlue,
            ),
          ),
        ],
      ),
    );
  }
}
