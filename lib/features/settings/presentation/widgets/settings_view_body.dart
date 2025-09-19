import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/account_section.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/settings_section.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [AccountSection(), SizedBox(height: 30), SettingsSection()],
        ),
      ),
    );
  }
}
