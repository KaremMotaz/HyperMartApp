import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'reset_password_view_body.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          forgotPasswordResetSuccess: () {
            successSnackBar(
              context: context,
              message: "Successfully reset password",
            );
            GoRouter.of(context).pushReplacement(Routes.loginView);
          },
          forgotPasswordFailure: (apiErrorModel) {
            errorDialog(context: context, apiErrorModel: apiErrorModel);
          },
        );
      },
      child: const ResetPasswordViewBody(),
    );
  }
}
