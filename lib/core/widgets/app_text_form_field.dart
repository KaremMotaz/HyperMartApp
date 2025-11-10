import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    required this.hintText,
    this.suffixIcon,
    this.backgroundColor,
    this.isObscureText,
    this.textStyle,
    required this.validator,
    this.textInputType,
    this.prefixIcon,
    this.maxLines,
    this.minLines,
  });
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final bool? isObscureText;
  final TextStyle? textStyle;
  final Function(String?) validator;
  final TextInputType? textInputType;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.mainBlue,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      keyboardType: textInputType ?? TextInputType.name,
      controller: controller,
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(
          minWidth: 50,
          minHeight: 50,
        ),
        suffixIconConstraints: const BoxConstraints(
          minWidth: 30,
          minHeight: 30,
        ),

        isDense: true,
        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder:
            focusedBorder ??
            buildOutLineInputBorder(borderColor: AppColors.lightGrey),
        enabledBorder:
            enabledBorder ??
            buildOutLineInputBorder(borderColor: AppColors.lightGrey),
        errorBorder: buildOutLineInputBorder(borderColor: AppColors.darkRed),
        focusedErrorBorder: buildOutLineInputBorder(
          borderColor: AppColors.darkRed,
        ),
        hintStyle: AppStyles.regular16,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? AppColors.formFieldGrey,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: textStyle ?? AppStyles.medium16,
      validator: (value) {
        return validator(value);
      },
    );
  }
}

OutlineInputBorder buildOutLineInputBorder({required Color borderColor}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: borderColor, width: 1.3),
    borderRadius: BorderRadius.circular(16),
  );
}
