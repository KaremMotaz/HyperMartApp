/// Represents an error that occurs while accessing the local cache (e.g., Hive).
class CacheErrorModel {
  final String message;
  final String suggestion;

  /// Constructor for creating a [CacheErrorModel].
  CacheErrorModel({required this.message, required this.suggestion});

  @override
  String toString() => 'CacheError: $message';
}
