import 'package:json_annotation/json_annotation.dart';

part 'get_category_by_id_response.g.dart';

@JsonSerializable()
class GetCategoryByIdResponse {
  final String id;
  final String? name;
  final String? description;
  final String? coverPictureUrl;

  GetCategoryByIdResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  factory GetCategoryByIdResponse.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryByIdResponseFromJson(json);
  }
}
