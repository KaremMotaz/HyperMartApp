// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsRequest _$GetProductsRequestFromJson(Map<String, dynamic> json) =>
    GetProductsRequest(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$GetProductsRequestToJson(GetProductsRequest instance) =>
    <String, dynamic>{'page': instance.page, 'pageSize': instance.pageSize};
