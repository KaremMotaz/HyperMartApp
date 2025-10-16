class ApiConstants {
  static const apiBaseUrl = "https://accessories-eshop.runasp.net/api/";

  static const login = "auth/login";
  static const register = "auth/register";
  static const verifyEmail = "auth/verify-email";
  static const logout = "auth/logout";
  static const changePassword = "auth/change-password";
  static const forgotPassword = "auth/forgot-password";
  static const resetPassword = "auth/reset-password";
  static const validateOtp = "auth/validate-otp";
  static const resendOtp = "auth/resend-otp";
  static const refreshToken = "auth/refresh-token";
  static const getUserData = "auth/me";

  static const getCategories = "categories";
  static const addCategory = "categories";
  static const deleteCategory = "categories/{id}";
  static const getCategoryById = "categories/{id}";
  static const updateCategory = "categories/{id}";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
