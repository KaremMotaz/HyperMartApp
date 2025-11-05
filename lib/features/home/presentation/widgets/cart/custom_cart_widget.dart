import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/apply_coupon_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/decrement_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/delete_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/update_cart_item_repo.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../manager/cart_cubit/cart_cubit.dart';

class CustomCartWidget extends StatelessWidget {
  const CustomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(
        getCartItemsRepo: getIt.get<GetCartItemsRepo>(),
        addCartItemRepo: getIt.get<AddCartItemRepo>(),
        decrementCartItemRepo: getIt.get<DecrementCartItemRepo>(),
        deleteCartItemRepo: getIt.get<DeleteCartItemRepo>(),
        updateCartItemRepo: getIt.get<UpdateCartItemRepo>(),
        applyCouponRepo: getIt.get<ApplyCouponRepo>(),
      )..getCartItems(),
      child: Builder(
        builder: (context) {
          return Positioned(
            left: 0,
            right: 0,
            bottom: 60,
            child: GestureDetector(
              onTap: () => context.push(Routes.cartView),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white, width: 5),
                  color: AppColors.orange,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.darkgrey.withAlpha(150),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.cartIcon,
                        colorFilter: const ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        ),
                      ),

                      BlocBuilder<CartCubit, CartState>(
                        buildWhen: (previous, current) {
                          if (current is GetCartItemsSuccess) {
                            return true;
                          }
                          if (current is UpdateCartItemSuccess) {
                            return true;
                          }
                          if (current is DecrementCartItemSuccess) {
                            return true;
                          }
                          if (current is AddCartItemSuccess) {
                            return true;
                          }
                          return false;
                        },
                        builder: (context, state) {
                          final cartItemsCount = context
                              .read<CartCubit>()
                              .currentCartItems
                              .length;

                          if (cartItemsCount == 0) {
                            return const SizedBox.shrink();
                          }

                          return Transform.translate(
                            offset: const Offset(10, -8),
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.white,
                                  width: 2,
                                ),
                                color: AppColors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
