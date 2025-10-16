// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoryByIdResponse _$GetCategoryByIdResponseFromJson(
  Map<String, dynamic> json,
) => GetCategoryByIdResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverPictureUrl: json['coverPictureUrl'] as String?,
);

Map<String, dynamic> _$GetCategoryByIdResponseToJson(
  GetCategoryByIdResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
};
