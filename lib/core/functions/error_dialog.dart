import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../networking/api_error_model.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

void errorDialog({
  required BuildContext context,
  required ApiErrorModel apiErrorModel,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return ErrorDialog(apiErrorModel: apiErrorModel);
    },
  );
}

class ErrorDialog extends StatelessWidget {
  final ApiErrorModel apiErrorModel;

  const ErrorDialog({super.key, required this.apiErrorModel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: AppColors.transparent,
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(100),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, color: AppColors.red, size: 48),
          const SizedBox(height: 16),
          Text(apiErrorModel.message, style: AppStyles.bold20),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: apiErrorModel.details!
                .map((msg) => Text(msg, style: AppStyles.medium16))
                .toList(),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => GoRouter.of(context).pop(),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.turquoise),
            ),
            child: Text(
              "Dismiss",
              style: AppStyles.medium16.copyWith(color: AppColors.turquoise),
            ),
          ),
        ],
      ),
    );
  }
}
