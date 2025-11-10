class ApiConstants {
  static const apiBaseUrl = "https://accessories-eshop.runasp.net/api/";

  // Auth
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

  // Categories
  static const getCategories = "categories";
  static const addCategory = "categories";
  static const deleteCategory = "categories/{id}";
  static const getCategoryById = "categories/{id}";
  static const updateCategory = "categories/{id}";

  // Products
  static const getProducts = "products";

  // Cart
  static const getCartItems = "cart";
  static const addCartItem = "cart/items";
  static const decrementCartItem = "cart/items/decrement";
  static const deleteCartItem = "cart/items/{Id}";
  static const updateCartItem = "cart/items/{Id}";
  static const applyCoupon = "cart/apply-coupon";

  // Reviews
  static const getReviews = "reviews/{productId}";
  static const addReview = "reviews/{productId}";
}
