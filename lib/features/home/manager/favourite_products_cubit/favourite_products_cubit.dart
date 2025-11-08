import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/cache/cache_error_model.dart';
import 'package:hyper_mart_app/core/cache/cache_result.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/favourite_products_repo.dart';

part 'favourite_products_state.dart';
part 'favourite_products_cubit.freezed.dart';

class FavouriteProductsCubit extends Cubit<FavouriteProductsState> {
  FavouriteProductsCubit({required this.favouriteProductsRepo})
    : super(const FavouriteProductsState.initial());

  final FavouriteProductsRepo favouriteProductsRepo;
  List<ProductModel?> favouriteProducts = [];

  Future<void> getAllFavouriteProducts() async {
    final CacheResult<List<ProductModel>?> result = await favouriteProductsRepo
        .getAllFavouriteProducts();

    if (isClosed) return;

    result.when(
      success: (response) {
        favouriteProducts = response ?? [];
        if (!isClosed) {
          emit(
            FavouriteProductsState.success(favouriteProducts: response ?? []),
          );
        }
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }

  Future<void> isFavouriteProduct({required String productId}) async {
    final CacheResult<bool> result = await favouriteProductsRepo
        .isFavouriteProduct(productId: productId);

    if (isClosed) return;
    result.when(
      success: (response) {
        if (!isClosed) {
          emit(FavouriteProductsState.isFavourite(isFavourite: response));
        }
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }

  Future<void> addToFavouriteProducts({required ProductModel data}) async {
    final CacheResult<void> result = await favouriteProductsRepo
        .addToFavouriteProducts(data: data);

    if (isClosed) return;

    result.when(
      success: (response) async {},
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }

  Future<void> removeFromFavouriteProducts({required String productId}) async {
    final CacheResult<void> result = await favouriteProductsRepo
        .removeFromFavouriteProducts(productId: productId);

    if (isClosed) return;

    result.when(
      success: (response) async {},
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }

  Future<void> toggleFavouriteProduct({required ProductModel product}) async {
    final CacheResult<bool> result = await favouriteProductsRepo
        .isFavouriteProduct(productId: product.id);

    if (isClosed) return;

    await result.when(
      success: (isFav) async {
        if (isFav) {
          await favouriteProductsRepo.removeFromFavouriteProducts(
            productId: product.id,
          );
        } else {
          await favouriteProductsRepo.addToFavouriteProducts(data: product);
        }
        // reload updated favourites
        await getAllFavouriteProducts();
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }

  Future<void> removeAllFavouriteProducts() async {
    final CacheResult<void> result = await favouriteProductsRepo
        .removeAllFavouriteProducts();

    if (isClosed) return;

    result.when(
      success: (response) async {
        // Reload the updated favourite products list
        await getAllFavouriteProducts();
      },
      failure: (apiErrorModel) {
        if (!isClosed) {
          emit(FavouriteProductsState.failure(cacheErrorModel: apiErrorModel));
        }
      },
    );
  }
}
