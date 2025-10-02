import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';
import 'user_avatar.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Account", style: TextStyles.bold20),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(Routes.profileView);
          },
          child: ListTile(
            leading: const UserAvatar(
              name: "Karim Motaz",
              savedColor: 0xffFDAA5D,
              fontSize: 24,
              radius: 24,
            ),
            title: const Text("Karim Motaz", style: TextStyles.bold18),
            subtitle: const Text("Customer"),
            trailing: const Icon(Icons.chevron_right_rounded),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
