import 'package:flutter/material.dart';
import '../theming/colors_manager.dart';

import '../theming/text_styles.dart';

void successSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: ColorsManager.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
      content: customSnackbar(
        message: message,
        color: ColorsManager.green,
        icon: Icons.check_circle,
        titleWord: "Success",
        context: context,
      ),
    ),
  );
}

void errorSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: ColorsManager.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
      content: customSnackbar(
        message: message,
        color: ColorsManager.darkRed,
        icon: Icons.cancel,
        titleWord: "Error",
        context: context,
      ),
    ),
  );
}

void warningSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: ColorsManager.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
      content: customSnackbar(
        message: message,
        color: ColorsManager.yellow,
        icon: Icons.warning,
        titleWord: "Warning",
        context: context,
      ),
    ),
  );
}

Widget customSnackbar({
  required String titleWord,
  required String message,
  required Color color,
  required IconData icon,
  required BuildContext context,
}) {
  bool isArabic = Directionality.of(context) == TextDirection.rtl;
  return ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        border: Border(
          bottom: const BorderSide(color: ColorsManager.transparent),
          left: isArabic
              ? const BorderSide(color: ColorsManager.transparent)
              : BorderSide(color: color, width: 10),
          right: isArabic
              ? BorderSide(color: color, width: 10)
              : const BorderSide(color: ColorsManager.transparent),
          top: const BorderSide(color: ColorsManager.transparent),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Icon(icon, color: color, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleWord,
                  style: TextStyles.semiBold16.copyWith(
                    color: ColorsManager.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  message,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: ColorsManager.black),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
