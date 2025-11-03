import 'package:json_annotation/json_annotation.dart';

part 'update_category_request.g.dart';

@JsonSerializable()
class UpdateCategoryRequestBody {
  final String newName;
  final String newDescription;
  final String newCoverPictureUrl;

  UpdateCategoryRequestBody({
    required this.newName,
    required this.newDescription,
    required this.newCoverPictureUrl,
  });
  Map<String, dynamic> toJson() {
    return _$UpdateCategoryRequestBodyToJson(this);
  }
}
