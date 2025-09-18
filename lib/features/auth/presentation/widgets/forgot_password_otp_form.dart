import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/resend_otp_cubit/resend_otp_cubit.dart';
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

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
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
          BlocConsumer<ResendOtpCubit, ResendOtpState>(
            listener: (context, state) {
              if (state is ResendOtpSuccessState) {
                successSnackBar(
                  context: context,
                  message: "Successfully Resend OTP",
                );
              } else if (state is ResendOtpFailureState) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ErrorDialog(
                      title: state.message,
                      messages: state.details,
                    );
                  },
                );
              }
            },
            builder: (context, state) {
              return state is ResendOtpTimerState
                  ? Text(
                      "Resend in ${_formatTime(state.remainingSeconds)}",
                      style: TextStyles.semiBold15.copyWith(
                        color: ColorsManager.darkergrey,
                      ),
                    )
                  : const ResendOTPEmailWidget();
            },
          ),
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
