import 'package:json_annotation/json_annotation.dart';

part 'add_review_request_body.g.dart';

@JsonSerializable()
class AddReviewRequestBody {
  final String productId;
  final String comment;
  final int rating;

  AddReviewRequestBody({
    required this.productId,
    required this.comment,
    required this.rating,
  });

  factory AddReviewRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddReviewRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddReviewRequestBodyToJson(this);
}
