import 'package:json_annotation/json_annotation.dart';
part 'validate_otp_request_body.g.dart';

@JsonSerializable()
class ValidateOTPRequestBody {
  final String email;
  final String otp;

  ValidateOTPRequestBody({required this.email, required this.otp});

  Map<String, dynamic> toJson() {
    return _$ValidateOTPRequestBodyToJson(this);
  }
}
