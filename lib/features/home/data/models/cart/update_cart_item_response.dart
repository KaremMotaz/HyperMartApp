import 'package:json_annotation/json_annotation.dart';

part 'update_cart_item_response.g.dart';

@JsonSerializable()
class UpdateCartItemResponse {
  final String message;
  final String id;
  final String productId;
  final int quantity;

  UpdateCartItemResponse({
    required this.message,
    required this.id,
    required this.productId,
    required this.quantity,
  });

  factory UpdateCartItemResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCartItemResponseToJson(this);
}
