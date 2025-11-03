import 'package:json_annotation/json_annotation.dart';

part 'add_cart_item_request_body.g.dart';

@JsonSerializable()
class AddCartItemRequestBody {
  final String productId;
  final int quantity;

  AddCartItemRequestBody({required this.productId, required this.quantity});

  factory AddCartItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddCartItemRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddCartItemRequestBodyToJson(this);
}
