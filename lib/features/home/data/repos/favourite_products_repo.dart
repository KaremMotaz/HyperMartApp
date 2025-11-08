import 'package:hyper_mart_app/core/cache/cache_error_handler.dart';
import 'package:hyper_mart_app/core/cache/cache_result.dart';
import 'package:hyper_mart_app/core/helpers/logger.dart';
import 'package:hyper_mart_app/features/home/data/local_data_source/favourite_products_local_data_source.dart';
import '../models/Products/get_products_response.dart';

class FavouriteProductsRepo {
  final FavouriteProductsLocalDataSource favouriteProductsLocalDataSource;

  FavouriteProductsRepo({required this.favouriteProductsLocalDataSource});

  Future<CacheResult<List<ProductModel>?>> getAllFavouriteProducts() async {
    try {
      final List<ProductModel>? response =
          await favouriteProductsLocalDataSource.getAllFavouriteProducts();
      return CacheResult.success(response);
    } catch (error) {
      Logger.log("From getAllFavouriteProducts : $error");
      return CacheResult.failure(CacheErrorHandler.handle(error: error));
    }
  }

  Future<CacheResult<bool>> isFavouriteProduct({
    required String productId,
  }) async {
    try {
      final bool response = await favouriteProductsLocalDataSource
          .isFavouriteProduct(productId: productId);
      return CacheResult.success(response);
    } catch (error) {
      Logger.log("From isFavouriteProduct : $error");

      return CacheResult.failure(CacheErrorHandler.handle(error: error));
    }
  }

  Future<CacheResult<void>> addToFavouriteProducts({
    required ProductModel data,
  }) async {
    try {
      favouriteProductsLocalDataSource.addToFavouriteProducts(data: data);
      return const CacheResult.success(null);
    } catch (error) {
      Logger.log("From addToFavouriteProducts : $error");

      return CacheResult.failure(CacheErrorHandler.handle(error: error));
    }
  }

  Future<CacheResult<void>> removeFromFavouriteProducts({
    required String productId,
  }) async {
    try {
      favouriteProductsLocalDataSource.removeFromFavouriteProducts(
        productId: productId,
      );
      return const CacheResult.success(null);
    } catch (error) {
      Logger.log("From removeFromFavouriteProducts : $error");

      return CacheResult.failure(CacheErrorHandler.handle(error: error));
    }
  }

  Future<CacheResult<void>> removeAllFavouriteProducts() async {
    try {
      favouriteProductsLocalDataSource.removeAllFavouriteProducts();
      return const CacheResult.success(null);
    } catch (error) {
      Logger.log("From removeAllFavouriteProducts : $error");

      return CacheResult.failure(CacheErrorHandler.handle(error: error));
    }
  }
}
