import 'package:json_annotation/json_annotation.dart';
part 'user_data_response.g.dart';

@JsonSerializable()
class UserDataResponse {
  final String userId;
  final String email;
  final String fullName;
  final String profilePicture;

  UserDataResponse({
    required this.userId,
    required this.email,
    required this.fullName,
    required this.profilePicture,
  });

  factory UserDataResponse.fromJson(Map<String, dynamic> json) {
    return _$UserDataResponseFromJson(json);
  }
}
