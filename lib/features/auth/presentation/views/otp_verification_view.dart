import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';

import '../../../../core/widgets/custom_app_bar_pop_icon.dart';
import 'widgets/otp_view_body_bloc_listener.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyEmailCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('OTP Verification'),
          leading: Navigator.of(context).canPop()
              ? const CustomAppBarPopIcon()
              : null,
        ),
        body: const SafeArea(child: OtpViewBodyBlocListener()),
      ),
    );
  }
}
