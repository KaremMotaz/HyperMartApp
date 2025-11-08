import 'package:freezed_annotation/freezed_annotation.dart';
import 'cache_error_model.dart';

part 'cache_result.freezed.dart';

@Freezed()
class CacheResult<T> with _$CacheResult<T> {
  const factory CacheResult.success(T data) = CacheSuccess<T>;
  const factory CacheResult.failure(CacheErrorModel cacheErrorModel) = CacheFailure<T>;
}
