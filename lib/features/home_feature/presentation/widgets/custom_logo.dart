import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hyper",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xffFDAA5D),
            ),
          ),
          TextSpan(
            text: "Mart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff4AB7B6),
            ),
          ),
        ],
      ),
    );
  }
}