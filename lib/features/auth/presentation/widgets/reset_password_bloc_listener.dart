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
        if (state is ForgotPasswordResetSuccessState) {
          successSnackBar(
            context: context,
            message: "Successfully reset password",
          );
          GoRouter.of(context).pushReplacement(Routes.loginView);
        } else if (state is ForgotPasswordFailureState) {
          errorDialog(
            context: context,
            message: state.message,
            details: state.details,
          );
        }
      },
      child: const ResetPasswordViewBody(),
    );
  }
}
