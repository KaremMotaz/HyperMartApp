import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/bloc_button.dart';
import '../../../auth/data/models/change_password_request_body.dart';
import '../../../auth/presentation/manager/change_password_cubit/change_password_cubit.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isCurrentPasswordObscureText = true;
  bool isNewPasswordObscureText = true;
  bool isConfirmPasswordObscureText = true;

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
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
          const Text('Current Password', style: TextStyles.semiBold16),
          const SizedBox(height: 8),
          AppTextFormField(
            hintText: "Enter your current password",
            isObscureText: isCurrentPasswordObscureText,
            controller: currentPasswordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isCurrentPasswordObscureText = !isCurrentPasswordObscureText;
                });
              },
              icon: Icon(
                isCurrentPasswordObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your current password";
              }
              return null;
            },
          ),
          const Text('New Password', style: TextStyles.semiBold16),
          const SizedBox(height: 8),
          AppTextFormField(
            hintText: "Enter your new password",
            isObscureText: isNewPasswordObscureText,
            controller: newPasswordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isNewPasswordObscureText = !isNewPasswordObscureText;
                });
              },
              icon: Icon(
                isNewPasswordObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your new password";
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
          const Text('Confirm New Password', style: TextStyles.semiBold16),
          const SizedBox(height: 8),
          AppTextFormField(
            hintText: "Re-enter new password",
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
                return "Please enter your new password again";
              }
              if (value != newPasswordController.text) {
                return "Passwords do not match";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<ChangePasswordCubit, ChangePasswordState>(
            label: "Change Password",
            isLoading: (state) => state is ChangePasswordLoadingState,
            onPressed: () {
              validateThenChangePassword(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenChangePassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      await context.read<ChangePasswordCubit>().changePassword(
        changePasswordRequestBody: ChangePasswordRequestBody(
          currentPassword: currentPasswordController.text,
          newPassword: newPasswordController.text,
          confirmNewPassword: confirmPasswordController.text,
        ),
      );
    }
  }
}
