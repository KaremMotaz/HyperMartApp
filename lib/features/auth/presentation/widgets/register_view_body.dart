import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'already_have_an_account.dart';
import 'register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create New Account",
              style: TextStyles.bold20.copyWith(color: ColorsManager.mainBlue),
            ),
            const SizedBox(height: 36),
            const RegisterForm(),
            const SizedBox(height: 25),
            const Align(
              alignment: AlignmentDirectional.center,
              child: AlreadyHaveAnAccount(),
            ),
          ],
        ),
      ),
    );
  }
}
