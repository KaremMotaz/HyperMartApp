import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/change_password_list_tile.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/logout_list_tile.dart';

import '../../../../core/theming/text_styles.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Settings", style: TextStyles.bold20),
        SizedBox(height: 20),
        LogoutListTile(),
        SizedBox(height: 8),
        ChangePasswordListTile(),
      ],
    );
  }
}
