import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../manager/login_cubit/login_cubit.dart';
import 'dont_have_an_account.dart';
import 'login_form.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController =
      TextEditingController();
  final TextEditingController passwordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyles.bold20.copyWith(
                color: ColorsManager.mainBlue,
              ),
            ),
            const SizedBox(height: 32),
            SignInForm(
              emailController: emailController,
              passwordController: passwordController,
              formKey: formKey,
            ),
            const SizedBox(height: 5),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {
                  GoRouter.of(
                    context,
                  ).push(Routes.forgotPasswordView);
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyles.regular13.copyWith(
                    color: ColorsManager.mainBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            AppTextButton(
              buttonText: "Login",
              
              textStyle: TextStyles.semiBold16.copyWith(
                color: Colors.white,
              ),
              backgroundColor: ColorsManager.mainBlue,
              buttonWidth: double.infinity,
              onPressed: () {
                validateThenSignin(context);
                emailController.clear();
                passwordController.clear();
              },
            ),
            const SizedBox(height: 25),
            const DontHaveAnAccount(),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  void validateThenSignin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().signinWithEmailAndPassword(
        passwordController: passwordController,
        emailController: emailController,
      );
    }
  }
}
