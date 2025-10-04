// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
AddCategoryModel _$AddCategoryModelFromJson(Map<String, dynamic> json) =>
    AddCategoryModel(
      name: json['name'] as String,
      description: json['description'] as String,
      coverPictureUrl: json['coverPictureUrl'] as String,
    );

Map<String, dynamic> _$AddCategoryModelToJson(AddCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'coverPictureUrl': instance.coverPictureUrl,
    };
