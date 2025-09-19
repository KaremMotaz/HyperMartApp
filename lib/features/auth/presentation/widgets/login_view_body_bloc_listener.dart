import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../manager/login_cubit/login_cubit.dart';
import 'login_view_body.dart';

class LoginViewBodyBlocListener extends StatelessWidget {
  const LoginViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          successSnackBar(context: context, message: "Login Success");
          GoRouter.of(context).go(Routes.mainView);
        }
        if (state is LoginFailureState) {
          errorDialog(
            context: context,
            message: state.message,
            details: state.details,
          );
        }
      },
      child: const LoginViewBody(),
    );
  }
}
