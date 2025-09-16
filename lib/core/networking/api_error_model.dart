class ApiErrorModel {
  final int? statusCode;
  final String? message;
  final List<String> errors;

  ApiErrorModel({
    required this.message,
    required this.statusCode,
    required this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    final allErrors = json['errors'] as Map<String, dynamic>?;
    final List<String> errorsList = [];
    if (allErrors != null) {
      allErrors.forEach((key, value) {
        for (var e in (value as List)) {
          final String singleErrorMessage = "$key: $e";
          errorsList.add(singleErrorMessage);
        }
      });
    }

    return ApiErrorModel(
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
      errors: errorsList,
    );
  }
}
