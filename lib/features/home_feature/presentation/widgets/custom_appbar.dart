import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/custom_logo.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/custom_notification_widget.dart';
import 'package:hyper_mart_app/features/home_feature/presentation/widgets/select_language_widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomLogo(),
        Spacer(),
        SelectLanguageWidget(),
        SizedBox(width: 12),
        CustomNotificationWidget(),
      ],
    );
  }
}
