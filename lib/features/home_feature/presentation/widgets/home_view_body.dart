import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomAppbar(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
