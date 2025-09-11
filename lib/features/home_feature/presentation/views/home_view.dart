import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeViewBody(),
    );
  }
}