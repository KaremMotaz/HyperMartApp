import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/custom_circular_progress_indicator.dart';
import '../../data/models/forgot_password_request_body.dart';
import '../manager/forgot_password_cubit/forgot_password_cubit.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
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
            controller: emailController,
            hintText: "Enter your email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              if (!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          const SizedBox(height: 26),
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is ForgotPasswordLoadingState,
                child: AppTextButton(
                  backgroundColor: ColorsManager.mainBlue,
                  buttonWidth: double.infinity,
                  onPressed: () {
                    validateThenSendOTP(context);
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

  void validateThenSendOTP(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().forgotPassword(
        forgotPasswordRequestBody: ForgotPasswordRequestBody(
          email: emailController.text,
        ),
      );
    }
  }
}
