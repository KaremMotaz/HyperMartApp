import 'package:flutter/material.dart';
import 'features/main_view/main_view.dart';

class HyperMartApp extends StatelessWidget {
  const HyperMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainView(),
    );
  }
}
