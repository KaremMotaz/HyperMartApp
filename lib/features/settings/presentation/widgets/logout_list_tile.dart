import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/functions/show_confirm_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../auth/presentation/manager/log_out_cubit/log_out_cubit.dart';
import 'custom_settings_list_tile.dart';

class LogoutListTile extends StatelessWidget {
  const LogoutListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogOutCubit, LogOutState>(
      listener: (context, state) {
        if (state is LogOutSuccessState) {
          successSnackBar(context: context, message: "Logged out successfully");
          GoRouter.of(context).pushReplacement(Routes.loginView);
        }
        if (state is LogOutFailureState) {
          errorDialog(
            context: context,
            message: state.message,
            details: state.details,
          );
        }
      },
      child: CustomSettingsListTile(
        bgIconcolor: ColorsManager.lightRed,
        title: "Log Out",
        onTap: () {
          showConfirmDialog(
            context: context,
            buttonText: "Log Out",
            bodyContent: "Are you sure you want to log out?",
            title: "Log Out?",
            buttonColor: ColorsManager.darkRed,
            onPressed: () async {
              await context.read<LogOutCubit>().logOut();
            },
          );
        },
        trailing: const SizedBox.shrink(),
        icon: Icons.logout_rounded,
        iconcolor: ColorsManager.red,
      ),
    );
  }
}
