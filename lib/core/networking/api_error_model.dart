class ApiErrorModel {
  final String message;
  final List<String>? details;

  ApiErrorModel({required this.message, this.details});

  factory ApiErrorModel.fromJson({required Map<String, dynamic> json}) {
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
      message: json['message'] ?? 'An error occurred',
      details: errorsList,
    );
  }
}
