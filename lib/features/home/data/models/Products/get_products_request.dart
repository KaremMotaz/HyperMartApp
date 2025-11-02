import 'package:json_annotation/json_annotation.dart';

part 'get_products_request.g.dart';

@JsonSerializable()
class GetProductsRequest {
  final int page;
  final int pageSize;

  GetProductsRequest({required this.page, required this.pageSize});

  factory GetProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetProductsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsRequestToJson(this);
}
