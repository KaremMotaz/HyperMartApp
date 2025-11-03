// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_coupon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyCouponResponse _$ApplyCouponResponseFromJson(Map<String, dynamic> json) =>
    ApplyCouponResponse(
      cartId: json['cartId'] as String,
      originalTotal: json['originalTotal'] as num,
      discountAmount: json['discountAmount'] as num,
      finalTotal: json['finalTotal'] as num,
      coupon: CouponModel.fromJson(json['coupon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplyCouponResponseToJson(
  ApplyCouponResponse instance,
) => <String, dynamic>{
  'cartId': instance.cartId,
  'originalTotal': instance.originalTotal,
  'discountAmount': instance.discountAmount,
  'finalTotal': instance.finalTotal,
  'coupon': instance.coupon.toJson(),
};

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) => CouponModel(
  code: json['code'] as String,
  type: json['type'] as String,
  value: json['value'] as num,
);

Map<String, dynamic> _$CouponModelToJson(CouponModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'value': instance.value,
    };
