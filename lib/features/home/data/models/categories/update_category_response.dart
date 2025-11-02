import 'package:json_annotation/json_annotation.dart';

part 'update_category_response.g.dart';

@JsonSerializable()
class UpdateCategoryResponse {
  final String? id;
  final String? name;
  final String? description;
  final String? coverPictureUrl;
  final String message;

  UpdateCategoryResponse({
    this.id,
    this.name,
    this.description,
    this.coverPictureUrl,
    required this.message,
  });

  factory UpdateCategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateCategoryResponseFromJson(json);
  }
}
