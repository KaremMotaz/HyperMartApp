import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class EditProfileListTile extends StatelessWidget {
  const EditProfileListTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
    required this.subTitle,
  });
  final String title;
  final Widget subTitle;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 35, color: AppColors.darkergrey),
      title: Text(title, style: AppStyles.bold16.copyWith(fontFamily: "Lato")),
      subtitle: subTitle,
      trailing: IconButton(
        onPressed: onTap,
        icon: const Icon(Icons.edit, color: AppColors.mainGrey, size: 20),
      ),
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
}
