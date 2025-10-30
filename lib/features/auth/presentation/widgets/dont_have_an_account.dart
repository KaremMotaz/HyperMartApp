import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: AppStyles.medium15.copyWith(color: AppColors.darkergrey),
          ),
          const TextSpan(text: " "),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).push(Routes.registerView);
              },
            text: "Create an Account",
            style: AppStyles.medium16.copyWith(color: AppColors.mainBlue),
          ),
        ],
      ),
    );
  }
}
