import 'package:flutter/material.dart';

import 'custom_logo.dart';
import 'custom_notification_widget.dart';
import 'select_language_widget.dart';

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
