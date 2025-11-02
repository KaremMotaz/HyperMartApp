import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_view_body.dart';
import '../widgets/other/custom_appbar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomAppbar(title: "Cart"),
              SizedBox(height: 20),
              CartViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
