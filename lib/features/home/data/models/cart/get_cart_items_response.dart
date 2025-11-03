import 'package:json_annotation/json_annotation.dart';

part 'get_cart_items_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetCartItemsResponse {
  final String cartId;
  final List<CartItemModel> cartItems;

  GetCartItemsResponse({required this.cartId, required this.cartItems});

  factory GetCartItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartItemsResponseToJson(this);
}

@JsonSerializable()
class CartItemModel {
  final String itemId;
  final String productId;
  final String productName;
  final String productCoverUrl;
  final int productStock;
  final int weightInGrams;
  final int quantity;
  final num discountPercentage;
  final num basePricePerUnit;
  final num finalPricePerUnit;
  final num totalPrice;

  CartItemModel({
    required this.itemId,
    required this.productId,
    required this.productName,
    required this.productCoverUrl,
    required this.productStock,
    required this.weightInGrams,
    required this.quantity,
    required this.discountPercentage,
    required this.basePricePerUnit,
    required this.finalPricePerUnit,
    required this.totalPrice,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);

  static List<CartItemModel> dummyCartItems = List.generate(
    10,
    (index) => CartItemModel(
      itemId: "",
      productId: "",
      productName: "",
      productCoverUrl: "",
      productStock: 0,
      weightInGrams: 0,
      quantity: 0,
      discountPercentage: 0,
      basePricePerUnit: 0,
      finalPricePerUnit: 0,
      totalPrice: 0,
    ),
  );
}
