// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateOTPRequestBody _$ValidateOTPRequestBodyFromJson(
  Map<String, dynamic> json,
) => ValidateOTPRequestBody(
  email: json['email'] as String,
  otp: json['otp'] as String,
);

Map<String, dynamic> _$ValidateOTPRequestBodyToJson(
  ValidateOTPRequestBody instance,
) => <String, dynamic>{'email': instance.email, 'otp': instance.otp};
