import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/auth/data/models/verify_email_request_body.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/verify_email_cubit/verify_email_cubit.dart';
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
            length: 5,
            controller: pinController,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            preFilledWidget: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '*',
                style: TextStyles.bold20.copyWith(
                  color: ColorsManager.lightGrey,
                ),
              ),
            ),
            errorBuilder: (errorText, pin) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    errorText ?? '',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              );
            },
            defaultPinTheme: PinTheme(
              width: 56,
              height: 56,
              textStyle: TextStyles.bold20,
              decoration: BoxDecoration(
                color: ColorsManager.white,
                border: Border.all(color: ColorsManager.lightGrey),
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
          AppTextButton(
            buttonWidth: double.infinity,
            textStyle: TextStyles.bold20,
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
          ),
        ],
      ),
    );
  }
}
