import 'package:json_annotation/json_annotation.dart';
part 'add_category_response.g.dart';

@JsonSerializable()
class AddCategoryResponse {
  final String? id;
  final String? name;
  final String? description;
  final String? coverPictureUrl;
  final String message;

  AddCategoryResponse({
    this.id,
    this.name,
    this.description,
    this.coverPictureUrl,
    required this.message,
  });

  factory AddCategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$AddCategoryResponseFromJson(json);
  }
}
