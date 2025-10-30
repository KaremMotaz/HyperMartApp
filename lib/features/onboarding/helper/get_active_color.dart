import 'package:flutter/material.dart';

Color getActiveColor({required int currentPageIndex}) {
  switch (currentPageIndex) {
    case 0:
      return const Color(0xff00b57f);
    case 1:
      return const Color(0xff00be58);
    case 2:
      return const Color(0xff1b85f5);
    case 3:
      return const Color(0xffba45e7);
    default:
      return Colors.white;
  }
}
