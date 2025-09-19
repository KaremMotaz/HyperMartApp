import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../manager/verify_email_cubit/verify_email_cubit.dart';

import 'otp_verification_view_body.dart';

class OtpViewBodyBlocListener extends StatelessWidget {
  const OtpViewBodyBlocListener({super.key, required this.userEmail});
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailState>(
      listener: (context, state) {
        if (state is VerifyEmailSuccessState) {
          successSnackBar(context: context, message: "Verify Email Success");
          GoRouter.of(context).pushReplacement(Routes.loginView);
        }
        if (state is VerifyEmailFailureState) {
          errorDialog(
            context: context,
            message: state.message,
            details: state.details,
          );
        }
      },
      child: OTPVerificationViewBody(userEmail: userEmail),
    );
  }
}
