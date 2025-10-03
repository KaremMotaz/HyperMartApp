import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theming/assets_manager.dart';
import '../../core/theming/colors_manager.dart';
import '../../core/theming/text_styles.dart';
import '../../core/widgets/custom_circular_progress_indicator.dart';
import '../../../../core/functions/check_if_logged_in_user.dart';
import '../../../../core/routing/routes.dart';

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
    _checkIfLoggedInUser();
  }

  Future<void> _checkIfLoggedInUser() async {
    final bool isLoggedInUser = await checkIfLoggedInUser();

    await Future.delayed(const Duration(milliseconds: 1500));

    if (mounted) {
      if (isLoggedInUser) {
        GoRouter.of(context).go(Routes.mainView);
      } else {
        GoRouter.of(context).go(Routes.loginView);
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
            Image.asset(AssetsManager.logo, width: 150, height: 150),
            Text(
              "HyperMart",
              style: TextStyles.bold22.copyWith(
                color: ColorsManager.mainBlue,
              ),
            ),
            const SizedBox(height: 30),
            // Loader
            const CustomCircularProgressIndicator(
              color: ColorsManager.mainBlue,
            ),
          ],
        ),
      ),
    );
  }
}
