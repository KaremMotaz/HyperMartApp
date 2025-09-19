import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/user_avatar.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const UserAvatar(name: "Karim Motaz", savedColor: 0xffFDAA5D),
        Positioned(
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, color: Colors.grey, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
