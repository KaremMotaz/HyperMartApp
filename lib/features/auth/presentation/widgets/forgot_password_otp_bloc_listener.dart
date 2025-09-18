import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'forgot_password_otp_view_body.dart';

class ForgotPasswordOTPBlocListener extends StatelessWidget {
  const ForgotPasswordOTPBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordVerifyOtpSuccessState) {
          successSnackBar(
            context: context,
            message: "Successfully verified OTP",
          );
          GoRouter.of(context).pushReplacement(Routes.resetPasswordView);
        } else if (state is ForgotPasswordFailureState) {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(title: state.message, messages: state.details);
            },
          );
        }
      },
      child: const ForgotPasswordOTPViewBody(),
    );
  }
}
