import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    super.key,
    required this.info,
    required this.infoImage,
    required this.title,
  });
  final String title;
  final String info;
  final String infoImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                info,
                style: AppStyles.bold18.copyWith(color: AppColors.green),
              ),
              const SizedBox(height: 4),
              Text(title, style: AppStyles.bold14.copyWith(color: Colors.grey)),
            ],
          ),
          SvgPicture.asset(infoImage, width: 34, height: 34),
        ],
      ),
    );
  }
}
