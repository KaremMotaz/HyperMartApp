import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';

class UserReviewItem extends StatelessWidget {
  const UserReviewItem({super.key});
  final String review =
      "I’m really impressed with this product. The build quality is excellent, and it works exactly as described";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lightGrey,
                  radius: 30,
                  child: Image.asset(AppAssets.emailNotification),
                ),
                Positioned(
                  bottom: 3,
                  right: -10,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 14,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "5.0",
                        style: AppStyles.semiBold11.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 25),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ahmed Amr", style: AppStyles.bold16),
                SizedBox(height: 5),
                Text("11/11/2025", style: AppStyles.regular12),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          review,
          style: AppStyles.regular16.copyWith(color: AppColors.appGrey),
        ),
      ],
    );
  }
}
