import 'package:json_annotation/json_annotation.dart';
part 'get_category_by_id_model.g.dart';

@JsonSerializable()
class GetCategoryByIdModel {
  final String id;
  final String? name;
  final String? description;
  final String? coverPictureUrl;

  GetCategoryByIdModel({
    required this.id,
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  factory GetCategoryByIdModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryByIdModelFromJson(json);
  }
}
