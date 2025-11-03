import 'package:hyper_mart_app/core/theming/app_assets.dart';
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

  static List<CartItemModel> fakeCartItems = [
    CartItemModel(
      itemId: '1',
      productId: 'P1001',
      productName: 'Organic Apple',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 50,
      weightInGrams: 500,
      quantity: 2,
      discountPercentage: 10,
      basePricePerUnit: 25,
      finalPricePerUnit: 22.5,
      totalPrice: 45,
    ),
    CartItemModel(
      itemId: '2',
      productId: 'P1002',
      productName: 'Whole Wheat Bread',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 30,
      weightInGrams: 700,
      quantity: 1,
      discountPercentage: 5,
      basePricePerUnit: 30,
      finalPricePerUnit: 28.5,
      totalPrice: 28.5,
    ),
    CartItemModel(
      itemId: '3',
      productId: 'P1003',
      productName: 'Fresh Milk 1L',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 100,
      weightInGrams: 1000,
      quantity: 3,
      discountPercentage: 0,
      basePricePerUnit: 20,
      finalPricePerUnit: 20,
      totalPrice: 60,
    ),
    CartItemModel(
      itemId: '4',
      productId: 'P1004',
      productName: 'Cheddar Cheese Block',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 15,
      weightInGrams: 250,
      quantity: 1,
      discountPercentage: 15,
      basePricePerUnit: 50,
      finalPricePerUnit: 42.5,
      totalPrice: 42.5,
    ),
    CartItemModel(
      itemId: '5',
      productId: 'P1005',
      productName: 'Olive Oil 500ml',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 40,
      weightInGrams: 500,
      quantity: 2,
      discountPercentage: 20,
      basePricePerUnit: 80,
      finalPricePerUnit: 64,
      totalPrice: 128,
    ),
    CartItemModel(
      itemId: '6',
      productId: 'P1006',
      productName: 'Brown Rice 1kg',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 25,
      weightInGrams: 1000,
      quantity: 1,
      discountPercentage: 5,
      basePricePerUnit: 35,
      finalPricePerUnit: 33.25,
      totalPrice: 33.25,
    ),
    CartItemModel(
      itemId: '7',
      productId: 'P1007',
      productName: 'Honey Natural 250g',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 10,
      weightInGrams: 250,
      quantity: 1,
      discountPercentage: 10,
      basePricePerUnit: 60,
      finalPricePerUnit: 54,
      totalPrice: 54,
    ),
    CartItemModel(
      itemId: '8',
      productId: 'P1008',
      productName: 'Peanut Butter Smooth',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 12,
      weightInGrams: 350,
      quantity: 2,
      discountPercentage: 0,
      basePricePerUnit: 45,
      finalPricePerUnit: 45,
      totalPrice: 90,
    ),
    CartItemModel(
      itemId: '9',
      productId: 'P1009',
      productName: 'Granola Cereal 500g',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 20,
      weightInGrams: 500,
      quantity: 1,
      discountPercentage: 12,
      basePricePerUnit: 55,
      finalPricePerUnit: 48.4,
      totalPrice: 48.4,
    ),
    CartItemModel(
      itemId: '10',
      productId: 'P1010',
      productName: 'Fresh Orange Juice 1L',
      productCoverUrl: AppAssets.dummyImage,
      productStock: 60,
      weightInGrams: 1000,
      quantity: 3,
      discountPercentage: 8,
      basePricePerUnit: 25,
      finalPricePerUnit: 23,
      totalPrice: 69,
    ),
  ];
}
