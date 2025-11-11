import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.isEditable, this.userRating});
  final bool isEditable;
  final double? userRating;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isEditable,
      child: Column(
        children: [
          RatingBar.builder(
            initialRating: userRating ?? 0,
            updateOnDrag: isEditable,
            glow: false,
            minRating: 1,
            unratedColor: const Color(0xffffecb0),
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemSize: 40,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) {
              return SvgPicture.asset(
                AppAssets.starFill,
                // colorFilter: const ColorFilter.mode(
                //   Colors.amber,
                //   BlendMode.srcIn,
                // ),
              );
            },
            onRatingUpdate: (value) {
              if (isEditable) {
                context.read<AddReviewCubit>().setUserRating(
                  rating: value.toInt(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
