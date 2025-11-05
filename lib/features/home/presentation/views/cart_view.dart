import 'package:flutter/material.dart';
import '../widgets/cart/cart_items_bloc_builder.dart';
import '../widgets/other/custom_appbar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffefefef),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppbar(
                  title: "My Cart",
                  backButtonBorderColor: Colors.white,
                ),
              ),
              Expanded(child: CartItemsBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
