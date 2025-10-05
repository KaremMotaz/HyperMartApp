import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String firstName;
  final String lastName;
  final String password;

  RegisterRequestBody({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return _$RegisterRequestBodyToJson(this);
  }
}
