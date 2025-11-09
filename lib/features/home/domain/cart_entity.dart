import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';

class CartEntity {
  final List<CartItemModel> currentCartItems;

  CartEntity({required this.currentCartItems});

  double calculateTotalBasePrice() {
    double totalPrice = 0;
    for (var cartItem in currentCartItems) {
      totalPrice += cartItem.basePricePerUnit * cartItem.quantity;
    }
    return double.parse(totalPrice.toStringAsFixed(2));
  }

  double calculateDiscountPrice() {
    double totalDiscountPrice = 0;
    for (var cartItem in currentCartItems) {
      totalDiscountPrice +=
          (cartItem.discountPercentage / 100) *
          cartItem.basePricePerUnit *
          cartItem.quantity;
    }
    return double.parse(totalDiscountPrice.toStringAsFixed(2));
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in currentCartItems) {
      totalPrice += cartItem.totalPrice;
    }
    return double.parse(totalPrice.toStringAsFixed(2));
  }

  double calculateTotalPriceAfterCoupon() {
    double totalPrice = 0;
    for (var cartItem in currentCartItems) {
      totalPrice += cartItem.totalPrice;
    }
    return double.parse(totalPrice.toStringAsFixed(2));
  }

  CartItemModel? getCartItem({required String productId}) {
    for (var carItem in currentCartItems) {
      if (carItem.productId == productId) {
        return carItem;
      }
    }
    return null;
  }
}
