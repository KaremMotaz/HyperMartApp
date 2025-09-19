import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/colors_manager.dart';
import 'package:hyper_mart_app/core/theming/text_styles.dart';
import 'package:hyper_mart_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';

class RememberMeButton extends StatelessWidget {
  const RememberMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<LoginCubit>().isSelected;

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            isSelected = !isSelected;
            context.read<LoginCubit>().setRememberMe(isSelected: isSelected);
          },
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsManager.mainBlue
                      : ColorsManager.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(
                  size: 14,
                  isSelected ? Icons.check : null,
                  color: ColorsManager.white,
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Remember Me",
          style: TextStyles.medium15.copyWith(color: ColorsManager.darkergrey),
        ),
      ],
    );
  }
}
