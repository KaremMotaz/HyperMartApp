import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';

import 'otp_verification_view_body.dart';

class OtpViewBodyBlocListener extends StatelessWidget {
  const OtpViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailState>(
      listener: (context, state) {
        if (state is VerifyEmailSuccessState) {
          successSnackBar(context: context, message: "Verify Email Success");
          GoRouter.of(context).pop();
        }
        if (state is VerifyEmailFailureState) {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(
                title: state.errorMessage,
                messages: state.details,
              );
            },
          );
        }
      },
      child: const OTPVerificationViewBody(),
    );
  }
}
