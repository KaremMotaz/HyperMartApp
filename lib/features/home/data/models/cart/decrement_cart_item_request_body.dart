import 'package:json_annotation/json_annotation.dart';

part 'decrement_cart_item_request_body.g.dart';

@JsonSerializable()
class DecrementCartItemRequestBody {
  final String itemId;
  final int quantity;

  DecrementCartItemRequestBody({required this.itemId, required this.quantity});

  factory DecrementCartItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$DecrementCartItemRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DecrementCartItemRequestBodyToJson(this);
}
