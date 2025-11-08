import 'dart:io';
import 'package:hive/hive.dart';
import 'cache_error_model.dart';

/// Handles errors that occur while accessing local cache (Hive).
class CacheErrorHandler {
  /// Processes the given [error] and returns a corresponding [CacheErrorModel].
  static CacheErrorModel handle({required dynamic error}) {
    if (error is HiveError) {
      return CacheErrorModel(
        message: "A local storage error occurred: ${error.message}",
        suggestion: "Please try restarting the app or clearing the local cache.",
      );
    } else if (error is FileSystemException) {
      return CacheErrorModel(
        message: "Couldn't read or write local data.",
        suggestion: "Check storage permissions or free up space, then try again.",
      );
    } else if (error is SocketException) {
      return CacheErrorModel(
        message: "No internet connection detected.",
        suggestion: "Please check your connection and try again.",
      );
    } else if (error is TypeError) {
      return CacheErrorModel(
        message: "Invalid data format found in local cache.",
        suggestion: "Please clear your cache and re-download the data.",
      );
    } else {
      return CacheErrorModel(
        message: "An unexpected cache error occurred.",
        suggestion: "Please try again later.",
      );
    }
  }
}
