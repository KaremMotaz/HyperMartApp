import 'package:json_annotation/json_annotation.dart';

part 'get_reviews_request_body.g.dart';

@JsonSerializable()
class GetReviewsRequestBody {
  final String productId;
  final int page;
  final int pageSize;

  GetReviewsRequestBody({
    required this.productId,
    required this.page,
    required this.pageSize,
  });

  factory GetReviewsRequestBody.fromJson(Map<String, dynamic> json) =>
      _$GetReviewsRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GetReviewsRequestBodyToJson(this);
}
