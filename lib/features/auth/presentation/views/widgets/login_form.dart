import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/helpers/app_regex.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              if (!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            hintText: "Password",
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

              if (!AppRegex.hasMinLength(value)) {
                return "Password must be at least 8 characters.";
              }
              if (!AppRegex.hasUpperCase(value)) {
                return "Password must contain at least one uppercase letter.";
              }
              if (!AppRegex.hasNumber(value)) {
                return "Password must contain at least one digit.";
              }
              if (!AppRegex.hasSpecialCharacter(value)) {
                return "Password must contain at least one special character.";
              }

              return null;
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
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is LoginLoadingState,
                child: AppTextButton(
                  textStyle: TextStyles.semiBold16.copyWith(
                    color: Colors.white,
                  ),
                  backgroundColor: ColorsManager.mainBlue,
                  buttonWidth: double.infinity,
                  onPressed: () {
                    validateThenSignin(context);
                  },
                  child: state is LoginLoadingState
                      ? SizedBox(
                          width: 21,
                          height: 21,
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          "Login",
                          style: TextStyles.bold18.copyWith(
                            color: Colors.white,
                          ),
                        ),
                ),
              );
            },
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
