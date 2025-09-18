import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/widgets/custom_app_bar_pop_icon.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/forgot_password_otp_bloc_listener.dart';

class ForgotPasswordOtpView extends StatelessWidget {
  const ForgotPasswordOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password OTP'),
        leading: Navigator.of(context).canPop()
            ? const CustomAppBarPopIcon()
            : null,
      ),
      body: const ForgotPasswordOTPBlocListener(),
    );
  }
}
