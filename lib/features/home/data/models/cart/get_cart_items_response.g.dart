// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartItemsResponse _$GetCartItemsResponseFromJson(
  Map<String, dynamic> json,
) => GetCartItemsResponse(
  cartId: json['cartId'] as String,
  cartItems: (json['cartItems'] as List<dynamic>)
      .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCartItemsResponseToJson(
  GetCartItemsResponse instance,
) => <String, dynamic>{
  'cartId': instance.cartId,
  'cartItems': instance.cartItems.map((e) => e.toJson()).toList(),
};

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      itemId: json['itemId'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productCoverUrl: json['productCoverUrl'] as String,
      productStock: (json['productStock'] as num).toInt(),
      weightInGrams: (json['weightInGrams'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      discountPercentage: json['discountPercentage'] as num,
      basePricePerUnit: json['basePricePerUnit'] as num,
      finalPricePerUnit: json['finalPricePerUnit'] as num,
      totalPrice: json['totalPrice'] as num,
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'productId': instance.productId,
      'productName': instance.productName,
      'productCoverUrl': instance.productCoverUrl,
      'productStock': instance.productStock,
      'weightInGrams': instance.weightInGrams,
      'quantity': instance.quantity,
      'discountPercentage': instance.discountPercentage,
      'basePricePerUnit': instance.basePricePerUnit,
      'finalPricePerUnit': instance.finalPricePerUnit,
      'totalPrice': instance.totalPrice,
    };
