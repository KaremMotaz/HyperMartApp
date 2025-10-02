import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../auth/presentation/manager/change_password_cubit/change_password_cubit.dart';
import 'change_password_view_body.dart';

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
          errorDialog(
            context: context,
            message: state.message,
            details: state.details,
          );
        }
      },
      child: const ChangePasswordViewBody(),
    );
  }
}
