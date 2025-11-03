import 'package:flutter/material.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/cart/checkout_widget.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/cart/get_cart_items_response.dart';
import 'cart_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
    required this.cartItems,
    this.isLoading = false,
  });
  final List<CartItemModel> cartItems;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: AppColors.white,
                  child: Text(
                    "You have ${cartItems.length} items in your cart",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: Skeletonizer.sliver(
                containersColor: Colors.grey[50],
                enabled: isLoading,
                child: SliverList.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return CartItem(cartItem: cartItems[index]);
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 330)),
          ],
        ),
        const CheckoutWidget(),
      ],
    );
  }
}
