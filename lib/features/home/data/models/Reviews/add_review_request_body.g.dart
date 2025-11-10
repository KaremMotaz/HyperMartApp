// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_review_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReviewRequestBody _$AddReviewRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddReviewRequestBody(
  productId: json['productId'] as String,
  comment: json['comment'] as String,
  rating: (json['rating'] as num).toInt(),
);

Map<String, dynamic> _$AddReviewRequestBodyToJson(
  AddReviewRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'comment': instance.comment,
  'rating': instance.rating,
};
