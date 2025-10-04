import 'package:flutter/material.dart';

class ErrorBody extends StatelessWidget {
  const ErrorBody({super.key, required this.message, required this.details});
  final String message;
  final List<String> details;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text(message), ...details.map((detail) => Text(detail))],
      ),
    );
  }
}
