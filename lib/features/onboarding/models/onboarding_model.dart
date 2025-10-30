import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';

class OnboardingModel {
  final String title;
  final String description;
  final int currentPageIndex;
  final String image;
  final String icon;
  final Color color;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.currentPageIndex,
    required this.image,
    required this.icon,
    required this.color,
  });

  static List<OnboardingModel> pages = [
    OnboardingModel(
      title: "Welcome to HyperMart",
      description:
          "Your one stop shop for all groceries and\nessentials, delivered fresh to your\ndoorstep.",
      currentPageIndex: 0,
      image: AppAssets.onboarding1,
      icon: AppAssets.onboardingIcon1,
      color: AppColors.turquoise,
    ),
    OnboardingModel(
      title: "Fresh & Quality Products",
      description:
          "Browse thousands of products from\nfresh produce to household essentials,\nall at great prices.",
      currentPageIndex: 1,
      image: AppAssets.onboarding2,
      icon: AppAssets.onboardingIcon2,
      color: AppColors.turquoise,
    ),
    OnboardingModel(
      title: "Fast Delivery",
      description:
          "Get your groceries delivered in as fast\nas 30 minutes, right to your doorstep.",
      currentPageIndex: 2,
      image: AppAssets.onboarding3,
      icon: AppAssets.onboardingIcon3,
      color: AppColors.turquoise,
    ),
    OnboardingModel(
      title: "Exclusive Deals",
      description:
          "Save more with daily deals, personalized\noffers, and loyalty rewards just for you.",
      currentPageIndex: 3,
      image: AppAssets.onboarding4,
      icon: AppAssets.onboardingIcon4,
      color: AppColors.turquoise,
    ),
  ];
}
