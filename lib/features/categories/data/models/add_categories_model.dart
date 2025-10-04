import 'package:json_annotation/json_annotation.dart';
part 'add_categories_model.g.dart';

@JsonSerializable()
class AddCategoryModel {
  final String name;
  final String description;
  final String coverPictureUrl;

  AddCategoryModel({
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  Map<String, dynamic> toJson() {
    return _$AddCategoryModelToJson(this);
  }
}
