import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/functions/custom_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../auth/presentation/manager/log_out_cubit/log_out_cubit.dart';
import 'custom_settings_list_tile.dart';

class LogoutListTile extends StatelessWidget {
  const LogoutListTile({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomSettingsListTile(
      bgIconcolor: ColorsManager.lightRed,
      title: "Log Out",
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) => LogOutCubit(authRepo: getIt.get<AuthRepo>()),
              child: Builder(
                builder: (context) {
                  return BlocListener<LogOutCubit, LogOutState>(
                    listener: (context, state) {
                      if (state is LogOutSuccessState) {
                        successSnackBar(
                          context: context,
                          message: "Logged out successfully",
                        );
                        GoRouter.of(context).pop();
                        GoRouter.of(context).go(Routes.loginView);
                      }
                      if (state is LogOutFailureState) {
                        errorDialog(
                          context: context,
                          message: state.message,
                          details: state.details,
                        );
                        GoRouter.of(context).pop();
                      }
                    },
                    child: CustomDialog<LogOutCubit, LogOutState>(
                      buttonText: "Log Out",
                      bodyContent: "Are you sure you want to log out?",
                      title: "Log Out?",
                      buttonColor: ColorsManager.darkRed,
                      onPressed: () async {
                        await context.read<LogOutCubit>().logOut();
                      },
                      isLoading: (state) => state is LogOutLoadingState,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      trailing: const SizedBox.shrink(),
      icon: Icons.logout_rounded,
      iconcolor: ColorsManager.red,
    );
  }
}
