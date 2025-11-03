import 'package:json_annotation/json_annotation.dart';

part 'add_categories_request.g.dart';

@JsonSerializable()
class AddCategoryRequestBody {
  final String name;
  final String description;
  final String coverPictureUrl;

  AddCategoryRequestBody({
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  Map<String, dynamic> toJson() {
    return _$AddCategoryRequestBodyToJson(this);
  }
}
