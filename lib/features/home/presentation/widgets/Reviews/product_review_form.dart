import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/theming/app_colors.dart';
import 'package:hyper_mart_app/core/theming/app_styles.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/core/widgets/app_text_form_field.dart';
import 'package:hyper_mart_app/core/widgets/bloc_button.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_request_body.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/custom_rating.dart';

class ProductReviewForm extends StatefulWidget {
  const ProductReviewForm({super.key, required this.productId});
  final String productId;

  @override
  State<ProductReviewForm> createState() => _ProductReviewFormState();
}

class _ProductReviewFormState extends State<ProductReviewForm> {
  final TextEditingController productReviewcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? errorMessage;

  @override
  void dispose() {
    productReviewcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (newContext) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (errorMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    errorMessage!,
                    style: AppStyles.semiBold16.copyWith(color: Colors.red),
                  ),
                ),
              const Text("What is your rate?", style: AppStyles.bold18),
              const SizedBox(height: 20),
              const CustomRating(isEditable: true),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Please leave a review", style: AppStyles.bold16),
              ),
              const SizedBox(height: 10),
              AppTextFormField(
                hintText: "Write a review",
                controller: productReviewcontroller,
                backgroundColor: AppColors.white,
                maxLines: 5,
                minLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your review";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        context.pop();
                      },
                      buttonText: "Cancel",
                      textStyle: AppStyles.semiBold18.copyWith(
                        color: AppColors.turquoise,
                      ),
                      backgroundColor: AppColors.lighterGrey,
                      borderRadius: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: BlocButton<AddReviewCubit, AddReviewState>(
                      onPressed: () {
                        validateThenAddReview(newContext);
                      },
                      isLoading: (state) => state is AddReviewLoading,
                      label: "Submit",
                      backgroundColor: AppColors.turquoise,
                      textStyle: AppStyles.semiBold18.copyWith(
                        color: Colors.white,
                      ),
                      borderRadius: 30,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void validateThenAddReview(BuildContext context) {
    final int userRating = context.read<AddReviewCubit>().userRating;
    if (formKey.currentState!.validate() && userRating != 0) {
      context.read<AddReviewCubit>().addReview(
        addReviewRequestBody: AddReviewRequestBody(
          productId: widget.productId,
          comment: productReviewcontroller.text,
          rating: userRating,
        ),
      );
      setState(() => errorMessage = null);
    } else if (formKey.currentState!.validate() && userRating == 0) {
      setState(() => errorMessage = "Please rate the product");
    }
  }
}
