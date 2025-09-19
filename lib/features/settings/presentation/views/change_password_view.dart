import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/widgets/custom_app_bar_pop_icon.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/change_password_bloc_listener.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
        leading: Navigator.of(context).canPop()
            ? const CustomAppBarPopIcon()
            : null,
      ),
      body: const ChangePasswordBlocListener(),
    );
  }
}
