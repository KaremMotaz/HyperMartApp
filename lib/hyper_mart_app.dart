import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/routing/app_router.dart';

class HyperMartApp extends StatelessWidget {
  const HyperMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.createRouter(),
    );
  }
}
