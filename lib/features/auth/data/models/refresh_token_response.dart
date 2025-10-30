import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  final String? accessToken;
  final String? expiresAtUtc;
  final String? refreshToken;

  RefreshTokenResponse({
    required this.accessToken,
    required this.expiresAtUtc,
    required this.refreshToken,
  });

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) {
    return _$RefreshTokenResponseFromJson(json);
  }
}
