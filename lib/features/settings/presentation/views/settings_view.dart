import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/settings_view_body.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../auth/domain/auth_repo.dart';
import '../../../auth/presentation/manager/log_out_cubit/log_out_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogOutCubit>(
      create: (context) => LogOutCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Settings")),
        body: const SafeArea(child: SettingsViewBody()),
      ),
    );
  }
}
