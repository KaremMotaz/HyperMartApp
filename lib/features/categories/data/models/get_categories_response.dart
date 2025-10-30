import '../../../../core/theming/app_assets.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_categories_response.g.dart';

@JsonSerializable()
class GetCategoriesResponse {
  final List<Category> categories;

  GetCategoriesResponse({required this.categories});

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) {
    return _$GetCategoriesResponseFromJson(json);
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
      coverPictureUrl: AppAssets.dummyImage,
    ),
  );
}
