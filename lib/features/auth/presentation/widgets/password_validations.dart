import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least one lowercase letter", hasLowerCase),
        const SizedBox(height: 4),

        buildValidationRow("At least one uppercase letter", hasUpperCase),
        const SizedBox(height: 4),
        buildValidationRow(
          "At least one special character",
          hasSpecialCharacters,
        ),
        const SizedBox(height: 4),
        buildValidationRow("At least one number", hasNumber),
        const SizedBox(height: 4),
        buildValidationRow("At least 8 characters long", hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: hasValidated ? AppColors.green : null,
          size: 16,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: AppStyles.regular14.copyWith(
            color: hasValidated ? AppColors.green : null,
          ),
        ),
      ],
    );
  }
}
