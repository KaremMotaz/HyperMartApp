import 'package:flutter/material.dart';
import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

void errorDialog({
  required BuildContext context,
  required String message,
  required List<String> details,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return ErrorDialog(message: message, details: details);
    },
  );
}

class ErrorDialog extends StatelessWidget {
  final String message;
  final List<String> details;

  const ErrorDialog({super.key, required this.message, required this.details});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, color: ColorsManager.red, size: 48),
          const SizedBox(height: 16),
          Text(message, style: TextStyles.bold20),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details
                .map((msg) => Text(msg, style: TextStyles.medium16))
                .toList(),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: ColorsManager.turquoise),
            ),
            child: Text(
              "Dismiss",
              style: TextStyles.medium16.copyWith(
                color: ColorsManager.turquoise,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
