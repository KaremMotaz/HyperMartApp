import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/theming/app_assets.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_request_body.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';

class ProductReviewTextFormField extends StatefulWidget {
  const ProductReviewTextFormField({super.key, required this.productId});
  final String productId;

  @override
  State<ProductReviewTextFormField> createState() =>
      _ProductReviewTextFormFieldState();
}

class _ProductReviewTextFormFieldState
    extends State<ProductReviewTextFormField> {
  final TextEditingController productReviewcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    productReviewcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: AppTextFormField(
        hintText: "Write a review",
        controller: productReviewcontroller,
        backgroundColor: AppColors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: AppColors.lightGrey,
            radius: 15,
            child: Image.asset(AppAssets.emailNotification),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            validateThenAddReview(context);
          },
          icon: const Icon(
            Icons.send_rounded,
            color: AppColors.mainBlue,
            size: 20,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your review";
          }
          return null;
        },
      ),
    );
  }

  void validateThenAddReview(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<AddReviewCubit>().addReview(
        addReviewRequestBody: AddReviewRequestBody(
          productId: widget.productId,
          comment: productReviewcontroller.text,
          rating: 3,
        ),
      );
    }
  }
}
