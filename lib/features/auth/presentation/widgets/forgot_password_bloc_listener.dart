import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'forgot_password_view_body.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordSendOtpSuccessState) {
          successSnackBar(
            context: context,
            message: "OTP has been sent to your email",
          );
          GoRouter.of(context).pushReplacement(Routes.forgotPasswordOtpView);
        }
        if (state is ForgotPasswordFailureState) {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(title: state.message, messages: state.details);
            },
          );
        }
      },
      child: const ForgotPasswordViewBody(),
    );
  }
}
