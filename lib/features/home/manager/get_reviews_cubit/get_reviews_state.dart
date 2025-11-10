part of 'get_reviews_cubit.dart';

@freezed
class GetReviewsState with _$GetReviewsState {
  const factory GetReviewsState.getReviewsLoading() = GetReviewsLoading;

  const factory GetReviewsState.getReviewsSuccess({
    required GetReviewsResponse getReviewsResponse,
  }) = GetReviewsSuccess;

  const factory GetReviewsState.getReviewsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetReviewsFailure;
}
