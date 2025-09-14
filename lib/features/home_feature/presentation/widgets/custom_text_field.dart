import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_manager.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: "Search Anything...",
      validator: (value) {},
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 17, right: 10),
        child: SvgPicture.asset(AssetsManager.searchIcon),
      ),
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 3,
            height: 24,
            color: ColorsManager.darkgrey,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(AssetsManager.micIcon),
            ),
          ),
        ],
      ),
    );
  }
}
