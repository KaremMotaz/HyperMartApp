import 'package:flutter/material.dart';
import 'edit_profile_list_tile.dart';
import 'profile_avatar.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 20),
            EditProfileListTile(
              title: "Name",
              subTitle: const Text("Karim Motaz"),
              onTap: () {},
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
