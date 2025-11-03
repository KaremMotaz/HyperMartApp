// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequestBody _$UpdateCategoryRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateCategoryRequestBody(
  newName: json['newName'] as String,
  newDescription: json['newDescription'] as String,
  newCoverPictureUrl: json['newCoverPictureUrl'] as String,
);

Map<String, dynamic> _$UpdateCategoryRequestBodyToJson(
  UpdateCategoryRequestBody instance,
) => <String, dynamic>{
  'newName': instance.newName,
  'newDescription': instance.newDescription,
  'newCoverPictureUrl': instance.newCoverPictureUrl,
};
