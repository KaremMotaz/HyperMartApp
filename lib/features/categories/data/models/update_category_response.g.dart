// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryResponse _$UpdateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => UpdateCategoryResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverPictureUrl: json['coverPictureUrl'] as String?,
  message: json['message'] as String,
);

// ignore: unused_element
Map<String, dynamic> _$UpdateCategoryResponseToJson(
  UpdateCategoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
  'message': instance.message,
};
