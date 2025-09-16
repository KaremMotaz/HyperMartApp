import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  final LoginState state;

  const LoginForm({super.key, required this.state});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: "Email",
            controller: emailController,
            backgroundColor: ColorsManager.lighterGray,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
            },
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            hintText: "Password",
            backgroundColor: ColorsManager.lighterGray,
            isObscureText: isPasswordObscureText,
            controller: passwordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              icon: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
            },
          ),
          const SizedBox(height: 5),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                GoRouter.of(context).push(Routes.forgotPasswordView);
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
            textStyle: TextStyles.semiBold16.copyWith(color: Colors.white),
            backgroundColor: ColorsManager.mainBlue,
            buttonWidth: double.infinity,
            onPressed: () {
              validateThenSignin(context);
              emailController.clear();
              passwordController.clear();
            },
            child: widget.state is LoginLoadingState
                ? SizedBox(
                    width: 15,
                    height: 15,
                    child: const CircularProgressIndicator(color: Colors.white),
                  )
                : Text(
                    "Login",
                    style: TextStyles.semiBold15.copyWith(color: Colors.white),
                  ),
          ),
        ],
      ),
    );
  }

  void validateThenSignin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().loginWithEmailAndPassword(
        loginRequestBody: LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }
}
