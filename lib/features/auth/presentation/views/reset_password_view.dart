import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar_pop_icon.dart';
import '../widgets/reset_password_bloc_listener.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
        leading: Navigator.of(context).canPop()
            ? const CustomAppBarPopIcon()
            : null,
      ),
      body: const ResetPasswordBlocListener(),
    );
  }
}
