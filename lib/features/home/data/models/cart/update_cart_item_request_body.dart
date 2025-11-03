import 'package:json_annotation/json_annotation.dart';

part 'update_cart_item_request_body.g.dart';

@JsonSerializable()
class UpdateCartItemRequestBody {
  final String id;
  final int quantity;

  UpdateCartItemRequestBody({
    required this.id,
    required this.quantity,
  });

  factory UpdateCartItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartItemRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCartItemRequestBodyToJson(this);
}
