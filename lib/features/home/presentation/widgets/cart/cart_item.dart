import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_controllers.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/cart_item_data.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/cart/get_cart_items_response.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CartItemData(cartItem: cartItem),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  context.read<CartCubit>().deleteCartItem(
                    itemId: cartItem.itemId,
                  );
                },
                child: SvgPicture.asset(
                  AppAssets.trashIcon,
                  width: 23,
                  height: 23,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffefefef),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: CartControllers(cartItem: cartItem),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
