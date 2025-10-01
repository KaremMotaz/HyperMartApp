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
    return RefreshTokenResponse(
      accessToken: json['accessToken'] as String,
      expiresAtUtc: json['expiresAtUtc'] as String,
      refreshToken: json['refreshToken'] as String,
    );
  }
}
