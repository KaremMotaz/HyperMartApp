import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/custom_dialog.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/change_password_cubit/change_password_cubit.dart';
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
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  ChangePasswordCubit(authRepo: getIt.get<AuthRepo>()),
              child: CustomDialog<ChangePasswordCubit, ChangePasswordState>(
                buttonText: "Submit",
                bodyContent: "Are you sure you want to change your password?",
                title: "Change Password?",
                buttonColor: ColorsManager.mainBlue,
                onPressed: () async {
                  GoRouter.of(context).go(Routes.changePasswordView);
                  GoRouter.of(context).pop();
                },
                isLoading: (state) => state is ChangePasswordLoadingState,
              ),
            );
          },
        );
      },
      trailing: const SizedBox.shrink(),
      icon: Icons.edit,
      iconcolor: ColorsManager.mainBlue,
    );
  }
}
