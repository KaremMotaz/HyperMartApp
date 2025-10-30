import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../manager/login_cubit/login_cubit.dart';

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
                  color: isSelected ? AppColors.mainBlue : AppColors.white,
                  border: Border.all(color: AppColors.mainGrey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(
                  size: 14,
                  isSelected ? Icons.check : null,
                  color: AppColors.white,
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Remember Me",
          style: AppStyles.medium15.copyWith(color: AppColors.darkergrey),
        ),
      ],
    );
  }
}
