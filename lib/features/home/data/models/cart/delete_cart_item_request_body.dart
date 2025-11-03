import 'package:json_annotation/json_annotation.dart';

part 'delete_cart_item_request_body.g.dart';

@JsonSerializable()
class DeleteCartItemRequestBody {
  final String id;

  DeleteCartItemRequestBody({
    required this.id,
  });

  factory DeleteCartItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$DeleteCartItemRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteCartItemRequestBodyToJson(this);
}
