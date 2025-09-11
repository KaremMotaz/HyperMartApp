import 'package:flutter/material.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {
  static const TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );
}
