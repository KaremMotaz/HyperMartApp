import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.read<CartCubit>().state is AddCartItemLoading &&
        context.read<CartCubit>().loadingItemId == product.id;
    return IgnorePointer(
      ignoring: isLoading,
      child: AppTextButton(
        onPressed: () {
          context.read<CartCubit>().addCartItem(productId: product.id);
        },
        buttonHeight: 45,
        buttonWidth: double.infinity,
        backgroundColor: AppColors.white,
        borderColor: AppColors.orange,
        textStyle: AppStyles.semiBold15.copyWith(color: AppColors.orange),
        child: isLoading
            ? const CustomCircularProgressIndicator(color: AppColors.orange)
            : Text(
                "Add to cart",
                style: AppStyles.semiBold15.copyWith(color: AppColors.orange),
              ),
      ),
    );
  }
}
