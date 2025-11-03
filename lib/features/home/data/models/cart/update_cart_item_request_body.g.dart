// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_item_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartItemRequestBody _$UpdateCartItemRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateCartItemRequestBody(
  id: json['id'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$UpdateCartItemRequestBodyToJson(
  UpdateCartItemRequestBody instance,
) => <String, dynamic>{'id': instance.id, 'quantity': instance.quantity};
