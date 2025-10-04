// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
AddCategoryRequest _$AddCategoryRequestFromJson(Map<String, dynamic> json) =>
    AddCategoryRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      coverPictureUrl: json['coverPictureUrl'] as String,
    );

Map<String, dynamic> _$AddCategoryRequestToJson(AddCategoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'coverPictureUrl': instance.coverPictureUrl,
    };
