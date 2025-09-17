import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/widgets/custom_circular_progress_indicator.dart';
import '../../../data/models/verify_email_request_body.dart';
import '../../manager/verify_email_cubit/verify_email_cubit.dart';
import '../../../../../core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class PinInputForm extends StatefulWidget {
  const PinInputForm({super.key, required this.userEmail});
  final String userEmail;

  @override
  State<PinInputForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<PinInputForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController pinController = TextEditingController();
  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Pinput(
            length: 6,
            controller: pinController,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            preFilledWidget: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '*',
                style: TextStyles.bold20.copyWith(
                  color: ColorsManager.mainBlue,
                ),
              ),
            ),
            errorBuilder: (errorText, pin) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    errorText ?? '',
                    style: TextStyles.regular14.copyWith(
                      color: ColorsManager.red,
                    ),
                  ),
                ),
              );
            },
            defaultPinTheme: PinTheme(
              width: 54,
              height: 54,
              textStyle: TextStyles.bold20.copyWith(
                color: ColorsManager.mainBlue,
              ),
              decoration: BoxDecoration(
                color: ColorsManager.white,
                border: Border.all(color: ColorsManager.mainBlue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your pin';
              }
              return null;
            },
          ),
          SizedBox(height: 150),
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
                          otp: pinController.text,
                        ),
                      );
                    }
                  },
                  child: state is VerifyEmailLoadingState
                      ? CustomCircularProgressIndicator()
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
