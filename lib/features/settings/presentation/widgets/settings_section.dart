import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import 'change_password_list_tile.dart';
import 'logout_list_tile.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Settings", style: AppStyles.bold20),
        SizedBox(height: 20),
        LogoutListTile(),
        SizedBox(height: 8),
        ChangePasswordListTile(),
      ],
    );
  }
}
