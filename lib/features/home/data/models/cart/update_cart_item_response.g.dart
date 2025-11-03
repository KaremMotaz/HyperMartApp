// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartItemResponse _$UpdateCartItemResponseFromJson(
  Map<String, dynamic> json,
) => UpdateCartItemResponse(
  message: json['message'] as String,
  id: json['id'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$UpdateCartItemResponseToJson(
  UpdateCartItemResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'id': instance.id,
  'productId': instance.productId,
  'quantity': instance.quantity,
};
