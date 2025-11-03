// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cart_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCartItemResponse _$AddCartItemResponseFromJson(Map<String, dynamic> json) =>
    AddCartItemResponse(
      message: json['message'] as String,
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddCartItemResponseToJson(
  AddCartItemResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'id': instance.id,
  'productId': instance.productId,
  'quantity': instance.quantity,
};
