import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import '../../../../core/functions/check_if_logged_in_user.dart';
import '../../../../core/services/cache_helper.dart';
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
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await CacheHelper.init();
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
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(AssetsManager.logo, width: 120, height: 120),
              // title
              const Text(
                "HyperMart",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.mainBlue,
                ),
              ),
              const SizedBox(height: 30),
              // Loader بسيط تحت الشعار
              const SpinKitThreeBounce(color: ColorsManager.mainBlue, size: 25),
            ],
          ),
        ),
      ),
    );
  }
}
