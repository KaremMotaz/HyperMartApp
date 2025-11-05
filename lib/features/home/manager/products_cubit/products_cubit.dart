import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/Products/get_products_response.dart';
import '../../data/repos/get_products_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.getProductsRepo})
    : super(const ProductsState.getProductsLoading());

  final GetProductsRepo getProductsRepo;

  Future<void> getProducts() async {
    final result = await getProductsRepo.getProducts();

    if (isClosed) return;

    result.when(
      success: (getProductsResponse) {
        if (!isClosed) {
          emit(
            ProductsState.getProductsSuccess(
              getProductsResponse: getProductsResponse,
            ),
          );
        }
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(ProductsState.getProductsFailure(apiErrorModel: apiErrorModel));
        }
      },
    );
  }
}
