import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'cart_items_cubit.freezed.dart';
part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit({required this.getCartItemsRepo})
    : super(const CartItemsState.getCartItemsLoading());

  final GetCartItemsRepo getCartItemsRepo;

  Future<void> getCartItems() async {
    final ApiResult<GetCartItemsResponse> result = await getCartItemsRepo
        .getCartItems();

    result.when(
      success: (getCartItemsResponse) {
        emit(
          CartItemsState.getCartItemsSuccess(
            getProductsResponse: getCartItemsResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.getCartItemsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
