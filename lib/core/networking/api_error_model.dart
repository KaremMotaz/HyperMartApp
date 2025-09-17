import 'package:hyper_mart_app/core/errors/failure.dart';

class ApiErrorModel extends Failure {
  ApiErrorModel({
    required super.message,
    required super.code,
    required super.details,
  });

  factory ApiErrorModel.fromJson({
    required Map<String, dynamic> json,
    required int? statusCode,
  }) {
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
      code: statusCode.toString(),
      message: json['message'] ?? 'An error occurred',
      details: errorsList,
    );
  }
}
