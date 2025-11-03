import 'package:json_annotation/json_annotation.dart';

part 'decrement_cart_item_response.g.dart';

@JsonSerializable()
class DecrementCartItemResponse {
  final String message;
  final String? itemId;
  final String? productId;
  final int quantity;

  DecrementCartItemResponse({
    required this.message,
    this.itemId,
    this.productId,
    required this.quantity,
  });

  factory DecrementCartItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DecrementCartItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DecrementCartItemResponseToJson(this);
}
