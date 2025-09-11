import 'package:flutter/material.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {
  static const TextStyle extraBold22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeightHelper.extraBold,
  );
  static const TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle semiBold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle medium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle regular10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle light10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeightHelper.light,
  );
}
