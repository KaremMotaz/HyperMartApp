class RefreshTokenRequestBody {
  final String refreshToken;
  final bool useCookies;

  RefreshTokenRequestBody({
    required this.refreshToken,
    this.useCookies = false,
  });
  Map<String, dynamic> toJson() {
    return {'refreshToken': refreshToken, 'useCookies': useCookies};
  }
}
