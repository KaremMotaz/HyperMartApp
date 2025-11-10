import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/core/networking/api_result.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/get_reviews_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_reviews_repo.dart';

part 'get_reviews_state.dart';
part 'get_reviews_cubit.freezed.dart';

class GetReviewsCubit extends Cubit<GetReviewsState> {
  GetReviewsCubit({required this.getReviewsRepo})
    : super(const GetReviewsState.getReviewsLoading());

  final GetReviewsRepo getReviewsRepo;

  Future<void> getReviews({required String productId}) async {
    final ApiResult<GetReviewsResponse> result = await getReviewsRepo
        .getReviews(productId: productId);

    if (isClosed) return;

    result.when(
      success: (getReviewsResponse) {
        if (!isClosed) {
          emit(
            GetReviewsState.getReviewsSuccess(
              getReviewsResponse: getReviewsResponse,
            ),
          );
        }
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(GetReviewsState.getReviewsFailure(apiErrorModel: apiErrorModel));
        }
      },
    );
  }
}
