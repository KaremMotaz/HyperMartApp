import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import '../../../../../core/functions/build_snack_bar.dart';
import '../../manager/login_cubit/login_cubit.dart';
import 'login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) async {
        if (state is LoginSuccessState) {
          successSnackBar(context: context, message: "Login Success");
          GoRouter.of(context).pushReplacement(Routes.mainView);
        }
        if (state is LoginFailureState) {
          showDialog(
            context: context,
            builder: (context) => ErrorDialog(
              title: "Login Failed",
              message: state.message.isEmpty
                  ? "Unexpected Error, Please try again later"
                  : state.message,
            ),
          );
        }
      },
      builder: (context, state) {
        return LoginViewBody(state: state);
      },
    );
  }
}
