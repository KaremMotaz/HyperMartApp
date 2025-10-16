import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/custom_app_bar_pop_icon.dart';
import '../../data/repos/auth_repo.dart';
import '../manager/resend_otp_cubit/resend_otp_cubit.dart';
import '../widgets/forgot_password_otp_bloc_listener.dart';

class ForgotPasswordOtpView extends StatelessWidget {
  const ForgotPasswordOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResendOtpCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password OTP'),
          leading: Navigator.of(context).canPop()
              ? const CustomAppBarPopIcon()
              : null,
        ),
        body: const ForgotPasswordOTPBlocListener(),
      ),
    );
  }
}
