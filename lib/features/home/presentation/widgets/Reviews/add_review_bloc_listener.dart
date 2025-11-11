import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/functions/build_snack_bar.dart';
import 'package:hyper_mart_app/core/functions/error_dialog.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/product_review_form.dart';

class AddReviewBlocListener extends StatelessWidget {
  const AddReviewBlocListener({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddReviewCubit, AddReviewState>(
      listener: (context, state) {
        state.whenOrNull(
          addReviewSuccess: (addReviewResponse) {
            successSnackBar(
              context: context,
              message: "Review Added Successfully",
            );
            context.pop();
          },
          addReviewFailure: (apiErrorModel) {
            errorDialog(context: context, apiErrorModel: apiErrorModel);
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 38),
        child: ProductReviewForm(productId: product.id),
      ),
    );
  }
}
