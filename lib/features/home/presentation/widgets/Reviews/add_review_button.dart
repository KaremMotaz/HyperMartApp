import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/core/widgets/app_text_button.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_review_repo.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/add_review_bloc_listener.dart';

class AddReviewButton extends StatelessWidget {
  const AddReviewButton({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          showDragHandle: true,
          elevation: 40,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: BlocProvider(
                  create: (context) =>
                      AddReviewCubit(addReviewRepo: getIt.get<AddReviewRepo>()),
                  child: AddReviewBlocListener(product: product),
                ),
              ),
            );
          },
        );
      },
      buttonText: "Add Review",
    );
  }
}
