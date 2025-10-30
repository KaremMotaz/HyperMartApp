import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/onboarding/presentation/widgets/custom_icon_card.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(onboardingModel.image, fit: BoxFit.fill),
            ),
          ),
          const SizedBox(height: 40),
          CustomIconCard(
            iconPath: onboardingModel.icon,
            color: onboardingModel.color,
          ),
          const SizedBox(height: 20),
          Text(
            onboardingModel.title,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold20,
          ),
          const SizedBox(height: 10),
          Text(
            onboardingModel.description,
            textAlign: TextAlign.center,
            style: AppStyles.regular18,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
