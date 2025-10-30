import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';

import '../../../../core/functions/check_if_logged_in_user.dart';
import '../../../../core/routing/routes.dart';
import '../../core/theming/app_assets.dart';
import '../../core/theming/app_colors.dart';
import '../../core/theming/app_styles.dart';
import '../../core/widgets/custom_circular_progress_indicator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  @override
  void initState() {
    super.initState();
    // Create the Animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Start the animation
    _controller.forward();
    _getInitialRoute();
  }

  checkIfHasSeenOnboarding() {
    return CacheHelper.getBool(key: kHasSeenOnboarding);
  }

  Future<void> _getInitialRoute() async {
    final bool isLoggedInUser = await checkIfLoggedInUser();
    final bool hasSeenOnboarding = await checkIfHasSeenOnboarding() ?? false;

    await Future.delayed(const Duration(milliseconds: 1500));

    if (mounted) {
      if (!hasSeenOnboarding) {
        return GoRouter.of(context).go(Routes.onboardingView);
      }
      if (isLoggedInUser) {
        return GoRouter.of(context).go(Routes.mainView);
      } else {
        return GoRouter.of(context).go(Routes.loginView);
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Image.asset(AppAssets.logo, width: 150, height: 150),
            Text(
              "HyperMart",
              style: AppStyles.bold22.copyWith(color: AppColors.mainBlue),
            ),
            const SizedBox(height: 30),
            // Loader
            const CustomCircularProgressIndicator(color: AppColors.mainBlue),
          ],
        ),
      ),
    );
  }
}
