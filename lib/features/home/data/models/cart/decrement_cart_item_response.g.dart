// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrement_cart_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecrementCartItemResponse _$DecrementCartItemResponseFromJson(
  Map<String, dynamic> json,
) => DecrementCartItemResponse(
  message: json['message'] as String,
  itemId: json['itemId'] as String?,
  productId: json['productId'] as String?,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$DecrementCartItemResponseToJson(
  DecrementCartItemResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'itemId': instance.itemId,
  'productId': instance.productId,
  'quantity': instance.quantity,
};
