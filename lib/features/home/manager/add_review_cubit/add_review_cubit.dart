import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/core/networking/api_result.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_review_repo.dart';

part 'add_review_state.dart';
part 'add_review_cubit.freezed.dart';

class AddReviewCubit extends Cubit<AddReviewState> {
  AddReviewCubit({required this.addReviewRepo})
    : super(const AddReviewState.addReviewinitial());
  final AddReviewRepo addReviewRepo;

  int userRating = 0;

  void setUserRating({required int rating}) => userRating = rating;

  Future<void> addReview({
    required AddReviewRequestBody addReviewRequestBody,
  }) async {
    emit(const AddReviewState.addReviewLoading());
    final ApiResult<AddReviewResponse> result = await addReviewRepo.addReview(
      addReviewRequestBody: addReviewRequestBody,
    );

    if (isClosed) return;

    result.when(
      success: (addReviewResponse) {
        if (!isClosed) {
          emit(
            AddReviewState.addReviewSuccess(
              addReviewResponse: addReviewResponse,
            ),
          );
        }
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(AddReviewState.addReviewFailure(apiErrorModel: apiErrorModel));
        }
      },
    );
  }
}
