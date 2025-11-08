part of 'favourite_products_cubit.dart';

@freezed
class FavouriteProductsState with _$FavouriteProductsState {
  /// Before any operation
  const factory FavouriteProductsState.initial() = Initial;

  /// While loading data or adding/removing a product
  const factory FavouriteProductsState.loading() = Loading;

  /// Success: returns all favourite products
  const factory FavouriteProductsState.success({
    required List<ProductModel> favouriteProducts,
  }) = Success;

  /// Failure: returns the error
  const factory FavouriteProductsState.failure({
    required CacheErrorModel cacheErrorModel,
  }) = Failure;

  /// State to check if a product is favourite
  const factory FavouriteProductsState.isFavourite({
    required bool isFavourite,
  }) = IsFavourite;
}
