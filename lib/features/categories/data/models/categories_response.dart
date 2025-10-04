import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:json_annotation/json_annotation.dart';
part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
  final List<Category> categories;

  CategoriesResponse({required this.categories});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoriesResponseFromJson(json);
  }
}

@JsonSerializable()
class Category {
  final String id;
  final String name;
  final String description;
  final String coverPictureUrl;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  static List<Category> dummyCategories = List.generate(
    4,
    (index) => Category(
      id: "",
      name: "",
      description: "",
      coverPictureUrl: AssetsManager.dummyImage,
    ),
  );
}
