import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/repos/add_cart_item_repo.dart';
import '../../data/repos/apply_coupon_repo.dart';
import '../../data/repos/decrement_cart_item_repo.dart';
import '../../data/repos/delete_cart_item_repo.dart';
import '../../data/repos/get_cart_items_repo.dart';
import '../../data/repos/update_cart_item_repo.dart';
import '../../manager/cart_cubit/cart_cubit.dart';
import '../widgets/cart/cart_items_bloc_builder.dart';
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
                create: (context) => CartCubit(
                  getCartItemsRepo: getIt.get<GetCartItemsRepo>(),
                  addCartItemRepo: getIt.get<AddCartItemRepo>(),
                  decrementCartItemRepo: getIt.get<DecrementCartItemRepo>(),
                  deleteCartItemRepo: getIt.get<DeleteCartItemRepo>(),
                  updateCartItemRepo: getIt.get<UpdateCartItemRepo>(),
                  applyCouponRepo: getIt.get<ApplyCouponRepo>(),
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
