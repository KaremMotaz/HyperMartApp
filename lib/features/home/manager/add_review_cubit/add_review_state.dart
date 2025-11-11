part of 'add_review_cubit.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState.addReviewinitial() = _AddReviewinitial;

  const factory AddReviewState.addReviewLoading() = AddReviewLoading;

  const factory AddReviewState.addReviewSuccess({
    required AddReviewResponse addReviewResponse,
  }) = AddReviewSuccess;

  const factory AddReviewState.addReviewFailure({
    required ApiErrorModel apiErrorModel,
  }) = AddReviewFailure;
}
