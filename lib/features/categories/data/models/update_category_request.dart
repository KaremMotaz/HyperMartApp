import 'package:json_annotation/json_annotation.dart';
part 'update_category_request.g.dart';

@JsonSerializable()
class UpdateCategoryRequest {
  final String newName;
  final String newDescription;
  final String newCoverPictureUrl;

  UpdateCategoryRequest({
    required this.newName,
    required this.newDescription,
    required this.newCoverPictureUrl,
  });
  Map<String, dynamic> toJson() {
    return _$UpdateCategoryRequestToJson(this);
  }
}
