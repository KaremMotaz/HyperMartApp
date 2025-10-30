import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';
import 'app_text_button.dart';
import 'bloc_button.dart';

class CustomDialog<C extends StateStreamable<S>, S> extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.buttonText,
    required this.bodyContent,
    required this.title,
    required this.buttonColor,
    required this.onPressed,
    required this.isLoading,
    this.cancelButtonText,
  });
  final String buttonText;
  final String bodyContent;
  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final bool Function(S)? isLoading;
  final String? cancelButtonText;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
          top: 12,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppStyles.bold20),
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(Icons.close_rounded, size: 26),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              bodyContent,
              style: AppStyles.bold16.copyWith(fontFamily: "Lato"),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: AppTextButton(
                    buttonText: cancelButtonText ?? "Cancel",
                    backgroundColor: const Color(0xffeaeaec),
                    verticalPadding: 5,
                    buttonHeight: 40,
                    borderRadius: 12,
                    textStyle: AppStyles.semiBold16.copyWith(
                      color: AppColors.darkergrey,
                      fontSize: 16,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: BlocButton<C, S>(
                    label: buttonText,
                    backgroundColor: buttonColor,
                    isLoading: isLoading,
                    verticalPadding: 5,
                    buttonHeight: 40,
                    borderRadius: 12,
                    textStyle: AppStyles.semiBold16.copyWith(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                    onPressed: onPressed,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
