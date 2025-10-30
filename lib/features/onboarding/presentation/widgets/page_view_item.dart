import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import '../../models/onboarding_model.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            onboardingModel.title,
            textAlign: TextAlign.center,
            style: AppStyles.bold22,
          ),
          Text(
            onboardingModel.description,
            textAlign: TextAlign.center,
            style: AppStyles.regular12,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
