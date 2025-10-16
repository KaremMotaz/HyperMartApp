import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/bloc_button.dart';
import '../../data/models/verify_email_request_body.dart';
import '../manager/verify_email_cubit/verify_email_cubit.dart';
import 'custom_pinput.dart';

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
          BlocButton<VerifyEmailCubit, VerifyEmailState>(
            label: "Next",
            isLoading: (state) => state is VerifyEmailLoading,
            onPressed: () {
              validateThenVerifyEmail(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenVerifyEmail(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<VerifyEmailCubit>().verifyEmail(
        verifyEmailRequestBody: VerifyEmailRequestBody(
          email: widget.userEmail,
          otp: otpController.text,
        ),
      );
    }
  }
}
