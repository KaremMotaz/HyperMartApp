// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryResponse _$AddCategoryResponseFromJson(Map<String, dynamic> json) =>
    AddCategoryResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      coverPictureUrl: json['coverPictureUrl'] as String?,
      message: json['message'] as String,
    );

// ignore: unused_element
Map<String, dynamic> _$AddCategoryResponseToJson(
  AddCategoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
  'message': instance.message,
};
