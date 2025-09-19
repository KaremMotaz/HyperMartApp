import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/change_password_cubit/change_password_cubit.dart';
import 'package:hyper_mart_app/features/settings/presentation/widgets/change_password_view_body.dart';

class ChangePasswordBlocListener extends StatelessWidget {
  const ChangePasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        if (state is ChangePasswordSuccessState) {
          successSnackBar(
            context: context,
            message: "Password changed successfully",
          );
          GoRouter.of(context).pop();
        }
        if (state is ChangePasswordFailureState) {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(title: state.message, messages: state.details);
            },
          );
        }
      },
      child: const ChangePasswordViewBody(),
    );
  }
}
