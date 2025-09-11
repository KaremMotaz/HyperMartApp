import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/views/home_view.dart';

class HyperMartApp extends StatelessWidget {
  const HyperMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}