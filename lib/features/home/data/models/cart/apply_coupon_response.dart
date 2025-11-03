import 'package:json_annotation/json_annotation.dart';

part 'apply_coupon_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ApplyCouponResponse {
  final String cartId;
  final num originalTotal;
  final num discountAmount;
  final num finalTotal;
  final CouponModel coupon;

  ApplyCouponResponse({
    required this.cartId,
    required this.originalTotal,
    required this.discountAmount,
    required this.finalTotal,
    required this.coupon,
  });

  factory ApplyCouponResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplyCouponResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyCouponResponseToJson(this);
}

@JsonSerializable()
class CouponModel {
  final String code;
  final String type;
  final num value;

  CouponModel({required this.code, required this.type, required this.value});

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);

  Map<String, dynamic> toJson() => _$CouponModelToJson(this);
}
