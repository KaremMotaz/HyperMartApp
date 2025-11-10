import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/widgets/app_draggable_sheet.dart';
import 'package:hyper_mart_app/features/home/manager/cubit/review_sheet_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/widgets/Reviews/product_review_form.dart';

class ReviewSheet extends StatelessWidget {
  const ReviewSheet({super.key, required this.productId});
  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewSheetCubit, double>(
      builder: (context, sheetSize) {
        return AppDraggableSheet(
          initialChildSize: sheetSize,
          maxChildSize: sheetSize,
          minChildSize: 0,
          scrollController: ScrollController(),
          child: ProductReviewForm(productId: productId),
        );
      },
    );
  }
}
