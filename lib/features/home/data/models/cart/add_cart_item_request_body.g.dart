// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cart_item_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCartItemRequestBody _$AddCartItemRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddCartItemRequestBody(
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$AddCartItemRequestBodyToJson(
  AddCartItemRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
};
