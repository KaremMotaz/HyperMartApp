import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/helpers/app_regex.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';

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
          const Text('Password', style: TextStyles.semiBold16),
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
          const Text('Confirm Password', style: TextStyles.semiBold16),
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
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is ForgotPasswordLoadingState,
                child: AppTextButton(
                  backgroundColor: ColorsManager.mainBlue,
                  buttonWidth: double.infinity,
                  onPressed: () {
                    validateThenResetPassword(context);
                  },
                  child: state is ForgotPasswordLoadingState
                      ? const CustomCircularProgressIndicator()
                      : Text(
                          "Reset Password",
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

  void validateThenResetPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().resetPassword(
        newPassword: passwordController.text,
      );
    }
  }
}
