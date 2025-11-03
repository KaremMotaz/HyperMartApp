// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryRequestBody _$AddCategoryRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddCategoryRequestBody(
  name: json['name'] as String,
  description: json['description'] as String,
  coverPictureUrl: json['coverPictureUrl'] as String,
);

Map<String, dynamic> _$AddCategoryRequestBodyToJson(
  AddCategoryRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
};
