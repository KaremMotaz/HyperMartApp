// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequest _$UpdateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => UpdateCategoryRequest(
  newName: json['newName'] as String,
  newDescription: json['newDescription'] as String,
  newCoverPictureUrl: json['newCoverPictureUrl'] as String,
);

Map<String, dynamic> _$UpdateCategoryRequestToJson(
  UpdateCategoryRequest instance,
) => <String, dynamic>{
  'newName': instance.newName,
  'newDescription': instance.newDescription,
  'newCoverPictureUrl': instance.newCoverPictureUrl,
};
