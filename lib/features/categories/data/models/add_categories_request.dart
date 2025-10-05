import 'package:json_annotation/json_annotation.dart';

part 'add_categories_request.g.dart';

@JsonSerializable()
class AddCategoryRequest {
  final String name;
  final String description;
  final String coverPictureUrl;

  AddCategoryRequest({
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  Map<String, dynamic> toJson() {
    return _$AddCategoryRequestToJson(this);
  }
}
