import 'package:json_annotation/json_annotation.dart';

part 'add_cart_item_response.g.dart';

@JsonSerializable()
class AddCartItemResponse {
  final String message;
  final String? id;
  final String? productId;
  final int quantity;

  AddCartItemResponse({
    required this.message,
    this.id,
    this.productId,
    required this.quantity,
  });

  factory AddCartItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCartItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddCartItemResponseToJson(this);
}
