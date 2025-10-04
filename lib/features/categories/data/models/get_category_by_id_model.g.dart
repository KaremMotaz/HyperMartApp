// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoryByIdModel _$GetCategoryByIdModelFromJson(
  Map<String, dynamic> json,
) => GetCategoryByIdModel(
  id: json['id'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverPictureUrl: json['coverPictureUrl'] as String?,
);

// ignore: unused_element
Map<String, dynamic> _$GetCategoryByIdModelToJson(
  GetCategoryByIdModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
};
