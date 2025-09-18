import 'package:hyper_mart_app/features/auth/presentation/widgets/custom_pinput.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/custom_circular_progress_indicator.dart';
import '../../data/models/verify_email_request_body.dart';
import '../manager/verify_email_cubit/verify_email_cubit.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinInputForm extends StatefulWidget {
  const PinInputForm({super.key, required this.userEmail});
  final String userEmail;

  @override
  State<PinInputForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<PinInputForm> {
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
          const SizedBox(height: 150),
          BlocBuilder<VerifyEmailCubit, VerifyEmailState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is VerifyEmailLoadingState,
                child: AppTextButton(
                  buttonWidth: double.infinity,
                  backgroundColor: ColorsManager.mainBlue,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      context.read<VerifyEmailCubit>().verifyEmail(
                        verifyEmailRequestBody: VerifyEmailRequestBody(
                          email: widget.userEmail,
                          otp: otpController.text,
                        ),
                      );
                    }
                  },
                  child: state is VerifyEmailLoadingState
                      ? const CustomCircularProgressIndicator()
                      : Text(
                          "Next",
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
}
