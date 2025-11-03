import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_products_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'products_cubit.freezed.dart'; 
part 'products_state.dart'; 

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.getProductsRepo})
    : super(const ProductsState.getProductsLoading());

  final GetProductsRepo getProductsRepo;

  Future<void> getProducts() async {
    final ApiResult<GetProductsResponse> result = await getProductsRepo
        .getProducts();

    result.when(
      success: (getProductsResponse) {
        emit(
          ProductsState.getProductsSuccess(
            getProductsResponse: getProductsResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(ProductsState.getProductsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
