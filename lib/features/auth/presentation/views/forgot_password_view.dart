import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/core/widgets/custom_app_bar_pop_icon.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/forgot_password_bloc_listener.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
          leading: Navigator.of(context).canPop()
              ? const CustomAppBarPopIcon()
              : null,
        ),
        body: const ForgotPasswordBlocListener(),
      ),
    );
  }
}
