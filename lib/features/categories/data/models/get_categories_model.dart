import 'package:hyper_mart_app/core/theming/assets_manager.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_categories_model.g.dart';

@JsonSerializable()
class GetCategoriesModel {
  final List<Category> categories;

  GetCategoriesModel({required this.categories});

  factory GetCategoriesModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoriesModelFromJson(json);
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
