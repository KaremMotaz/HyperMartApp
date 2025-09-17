class VerifyEmailRequestBody {
  final String email;
  final String otp;

  VerifyEmailRequestBody({required this.email, required this.otp});
  Map<String, dynamic> toJson() {
    return {'email': email, 'otp': otp};
  }
}
