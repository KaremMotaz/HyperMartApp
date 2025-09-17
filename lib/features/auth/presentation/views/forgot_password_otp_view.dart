import 'package:flutter/material.dart';

class ForgotPasswordOtpView extends StatelessWidget {
  const ForgotPasswordOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password OTP'),
      ),
      body: const Center(
        child: Text('Forgot Password OTP View'),
      ),
    );
  }
}