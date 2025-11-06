import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/other/custom_appbar.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [CustomAppbar(title: "Checkout")]),
        ),
      ),
    );
  }
}
