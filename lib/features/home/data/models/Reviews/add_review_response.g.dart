// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReviewResponse _$AddReviewResponseFromJson(Map<String, dynamic> json) =>
    AddReviewResponse(
      message: json['message'] as String,
      id: json['id'] as String,
      productId: json['productId'] as String,
      comment: json['comment'] as String,
      rating: (json['rating'] as num).toInt(),
    );

Map<String, dynamic> _$AddReviewResponseToJson(AddReviewResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
      'productId': instance.productId,
      'comment': instance.comment,
      'rating': instance.rating,
    };
