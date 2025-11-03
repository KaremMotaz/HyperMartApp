import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import 'package:hyper_mart_app/features/home/manager/cart_items_cubit/cart_items_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_items_bloc_builder.dart';
import '../widgets/other/custom_appbar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppbar(title: "My Cart"),
              ),
              BlocProvider(
                create: (context) => CartItemsCubit(
                  getCartItemsRepo: getIt.get<GetCartItemsRepo>(),
                  addCartItemRepo: getIt.get<AddCartItemRepo>(),
                )..getCartItems(),
                child: const CartItemsBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
