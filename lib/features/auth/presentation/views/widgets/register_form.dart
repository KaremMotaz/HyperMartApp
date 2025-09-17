import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:hyper_mart_app/features/auth/data/models/register_request_body.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/register_cubit/register_cubit.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import 'password_validations.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;

  // validation booleans
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    setupPasswordControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
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
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              if (!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
              return null;
            },
            controller: emailController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.text,
            hintText: "First Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your first name";
              }
              return null;
            },
            controller: firstNameController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.text,
            hintText: "Last Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your last name";
              }
              return null;
            },
            controller: lastNameController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            hintText: "Password",
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
              if (!AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text("Password must contain:", style: TextStyles.regular14),
          ),
          const SizedBox(height: 10),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          const SizedBox(height: 25),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is RegisterLoadingState,
                child: AppTextButton(
                  buttonWidth: double.infinity,
                  backgroundColor: ColorsManager.mainBlue,
                  onPressed: () {
                    validateThenRegister(context);
                  },
                  child: state is RegisterLoadingState
                      ? CustomCircularProgressIndicator()
                      : Text(
                          "Register",
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

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  void validateThenRegister(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<RegisterCubit>().registerWithEmailAndPassword(
        registerRequestBody: RegisterRequestBody(
          email: emailController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          password: passwordController.text,
        ),
      );
    }
  }
}


