import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/bloc_button.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isPasswordObscureText = true;
  bool isConfirmPasswordObscureText = true;

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Password', style: AppStyles.semiBold16),
          const SizedBox(height: 8),
          AppTextFormField(
            hintText: "Enter your new password",
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
          const SizedBox(height: 16),
          const Text('Confirm Password', style: AppStyles.semiBold16),
          const SizedBox(height: 8),
          AppTextFormField(
            hintText: "Re-enter password",
            isObscureText: isConfirmPasswordObscureText,
            controller: confirmPasswordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isConfirmPasswordObscureText = !isConfirmPasswordObscureText;
                });
              },
              icon: Icon(
                isConfirmPasswordObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
              if (value != passwordController.text) {
                return "Passwords do not match";
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
          const SizedBox(height: 25),
          BlocButton<ForgotPasswordCubit, ForgotPasswordState>(
            label: "Reset Password",
            isLoading: (state) => state is ForgotPasswordLoading,
            onPressed: () {
              validateThenResetPassword(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenResetPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().resetPassword(
        newPassword: passwordController.text,
      );
    }
  }
}
