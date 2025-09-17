import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/routing/app_router.dart';
import 'package:hyper_mart_app/core/theming/theme_manager.dart';

class HyperMartApp extends StatelessWidget {
  const HyperMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
      routerConfig: AppRouter.createRouter(),
    );
  }
}
