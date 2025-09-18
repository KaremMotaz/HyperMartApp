import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_pop_icon.dart';
import '../widgets/forgot_password_bloc_listener.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        leading: Navigator.of(context).canPop()
            ? const CustomAppBarPopIcon()
            : null,
      ),
      body: const ForgotPasswordBlocListener(),
    );
  }
}
