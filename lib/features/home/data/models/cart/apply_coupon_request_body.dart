import 'package:json_annotation/json_annotation.dart';

part 'apply_coupon_request_body.g.dart';

@JsonSerializable()
class ApplyCouponRequestBody {
  final String couponCode;

  ApplyCouponRequestBody({required this.couponCode});

  factory ApplyCouponRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ApplyCouponRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyCouponRequestBodyToJson(this);
}
