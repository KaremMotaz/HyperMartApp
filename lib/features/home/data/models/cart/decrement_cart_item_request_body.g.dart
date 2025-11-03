// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrement_cart_item_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecrementCartItemRequestBody _$DecrementCartItemRequestBodyFromJson(
  Map<String, dynamic> json,
) => DecrementCartItemRequestBody(
  itemId: json['itemId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$DecrementCartItemRequestBodyToJson(
  DecrementCartItemRequestBody instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'quantity': instance.quantity,
};
