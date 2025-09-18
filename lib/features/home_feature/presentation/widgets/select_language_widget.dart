import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/text_styles.dart';

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const Text("Eng",style: TextStyles.regular12,),
          const SizedBox(width: 5),
          SvgPicture.asset(AssetsManager.arrowDownIcon),
        ],
      ),
    );
  }
}
