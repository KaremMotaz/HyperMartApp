import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../theming/colors_manager.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(color: color ?? ColorsManager.white, size: 25);
  }
}
