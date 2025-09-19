import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/core/functions/show_confirm_dialog.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/custom_settings_list_tile.dart';
import '../../../../core/routing/routes.dart';
import '../../../auth/presentation/manager/log_out_cubit/log_out_cubit.dart';

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
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(title: state.message, messages: state.details);
            },
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
