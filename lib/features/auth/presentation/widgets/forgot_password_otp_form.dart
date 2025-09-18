import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/custom_pinput.dart';
import 'package:hyper_mart_app/features/auth/presentation/widgets/resend_otp_email_widget.dart';

class ForgotPasswordOTPForm extends StatefulWidget {
  const ForgotPasswordOTPForm({super.key});

  @override
  State<ForgotPasswordOTPForm> createState() => _ForgotPasswordOTPFormState();
}

class _ForgotPasswordOTPFormState extends State<ForgotPasswordOTPForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomPinput(otpController: otpController),
          const SizedBox(height: 26),
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is ForgotPasswordLoadingState,
                child: AppTextButton(
                  backgroundColor: ColorsManager.mainBlue,
                  buttonWidth: double.infinity,
                  onPressed: () {
                    validateThenVerifyOTPCode(context);
                  },
                  child: state is ForgotPasswordLoadingState
                      ? const CustomCircularProgressIndicator()
                      : Text(
                          "Verify Code",
                          style: TextStyles.bold18.copyWith(
                            color: Colors.white,
                          ),
                        ),
                ),
              );
            },
          ),
          const SizedBox(height: 36),
          const ResendOTPEmailWidget(),
        ],
      ),
    );
  }

  void validateThenVerifyOTPCode(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().validateOtp(otp: otpController.text);
    }
  }
}
