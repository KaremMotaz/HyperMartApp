import 'package:json_annotation/json_annotation.dart';
part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  final String currentPassword;
  final String newPassword;
  final String confirmNewPassword;

  ChangePasswordRequestBody({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  Map<String, dynamic> toJson() {
    return _$ChangePasswordRequestBodyToJson(this);
  }
}
