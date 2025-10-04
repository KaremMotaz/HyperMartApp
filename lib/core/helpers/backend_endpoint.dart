class BackendEndpoint {
  static const baseUrl = "https://accessories-eshop.runasp.net/api/";
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
}
