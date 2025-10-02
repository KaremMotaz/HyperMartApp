import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/show_confirm_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors_manager.dart';
import 'custom_settings_list_tile.dart';

class ChangePasswordListTile extends StatelessWidget {
  const ChangePasswordListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsListTile(
      bgIconcolor: ColorsManager.lightBlue,
      title: "Change Password",
      onTap: () {
        showConfirmDialog(
          context: context,
          buttonText: "Submit",
          bodyContent: "Are you sure you want to change your password?",
          title: "Change Password?",
          buttonColor: ColorsManager.mainBlue,
          onPressed: () async {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.changePasswordView);
          },
        );
      },
      trailing: const SizedBox.shrink(),
      icon: Icons.edit,
      iconcolor: ColorsManager.mainBlue,
    );
  }
}
