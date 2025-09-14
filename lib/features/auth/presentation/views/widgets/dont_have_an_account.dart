import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          const TextSpan(text: "Don't have an account?", style: TextStyles.regular14),
          const TextSpan(
            text: " ",
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).push(Routes.signUpView);
              },
            text: "Create an Account",
            style: TextStyles.medium16.copyWith(
              color: ColorsManager.mainBlue,
            ),
          ),
        ],
      ),
    );
  }
}
