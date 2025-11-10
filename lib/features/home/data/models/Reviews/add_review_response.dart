import 'package:json_annotation/json_annotation.dart';

part 'add_review_response.g.dart';

@JsonSerializable()
class AddReviewResponse {
  final String message;
  final String id;
  final String productId;
  final String comment;
  final int rating;

  AddReviewResponse({
    required this.message,
    required this.id,
    required this.productId,
    required this.comment,
    required this.rating,
  });

  factory AddReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$AddReviewResponseFromJson(json);
      
  Map<String, dynamic> toJson() => _$AddReviewResponseToJson(this);
}
