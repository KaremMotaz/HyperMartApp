abstract class Failure {
  final String? code;
  final String message;
  final List<String> details;

  const Failure({
    required this.message,
    required this.code,
    this.details = const [],
  });
}
