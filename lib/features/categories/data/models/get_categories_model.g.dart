// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoriesModel _$GetCategoriesModelFromJson(Map<String, dynamic> json) =>
    GetCategoriesModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

// ignore: unused_element
Map<String, dynamic> _$GetCategoriesModelToJson(GetCategoriesModel instance) =>
    <String, dynamic>{'categories': instance.categories};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  coverPictureUrl: json['coverPictureUrl'] as String,
);

// ignore: unused_element
Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
};
