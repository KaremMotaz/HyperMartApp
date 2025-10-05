import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/auth_repo.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/custom_app_bar_pop_icon.dart';
import '../manager/register_cubit/register_cubit.dart';
import '../widgets/register_view_body_bloc_listener.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          leading: Navigator.of(context).canPop()
              ? const CustomAppBarPopIcon()
              : null,
        ),
        body: const SafeArea(child: RegisterViewBodyBlocListener()),
      ),
    );
  }
}
