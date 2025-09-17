import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          const TextSpan(
            text: "Already have an account?",
            style: TextStyles.medium16,
          ),
          const TextSpan(
            text: " ",
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).push(Routes.loginView);
              },
            text: "Login",
            style: TextStyles.medium16.copyWith(
              color: ColorsManager.mainBlue,
            ),
          ),
        ],
      ),
    );
  }
}
