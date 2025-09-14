import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SignInForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const SignInForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    widget.passwordController.dispose();
    widget.emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          AppTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: "Email",
            controller: widget.emailController,
            backgroundColor: ColorsManager.lighterGray,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              if (!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
              return null;
            },
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            hintText: "Password",
            backgroundColor: ColorsManager.lighterGray,
            isObscureText: isPasswordObscureText,
            controller: widget.passwordController,
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
              if (!AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
