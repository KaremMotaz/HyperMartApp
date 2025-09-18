class ValidateOTPRequestBody {
  final String email;
  final String otp;

  ValidateOTPRequestBody({required this.email, required this.otp});

  Map<String, dynamic> toJson() {
    return {'email': email, 'otp': otp};
  }
}
