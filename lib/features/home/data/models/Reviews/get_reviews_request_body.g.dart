// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReviewsRequestBody _$GetReviewsRequestBodyFromJson(
  Map<String, dynamic> json,
) => GetReviewsRequestBody(
  productId: json['productId'] as String,
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
);

Map<String, dynamic> _$GetReviewsRequestBodyToJson(
  GetReviewsRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
