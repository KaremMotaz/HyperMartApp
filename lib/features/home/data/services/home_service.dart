import 'package:dio/dio.dart';
import '../models/Products/get_products_request_body.dart';
import '../models/Products/get_products_response.dart';
import '../models/cart/add_cart_item_request_body.dart';
import '../models/cart/add_cart_item_response.dart';
import '../models/cart/apply_coupon_request_body.dart';
import '../models/cart/apply_coupon_response.dart';
import '../models/cart/decrement_cart_item_request_body.dart';
import '../models/cart/decrement_cart_item_response.dart';
import '../models/cart/delete_cart_item_request_body.dart';
import '../models/cart/get_cart_items_response.dart';
import '../models/cart/update_cart_item_request_body.dart';
import '../models/cart/update_cart_item_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/categories/add_categories_request.dart';
import '../models/categories/add_category_response.dart';
import '../models/categories/get_categories_response.dart';
import '../models/categories/get_category_by_id_response.dart';
import '../models/categories/update_category_request.dart';
import '../models/categories/update_category_response.dart';

part 'home_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeService {
  factory HomeService(Dio dio) = _HomeService;

  // Categories
  @GET(ApiConstants.getCategories)
  Future<GetCategoriesResponse> getCategories();

  @POST(ApiConstants.addCategory)
  Future<AddCategoryResponse> addCategory({
    @Body() required AddCategoryRequestBody body,
  });

  @DELETE(ApiConstants.deleteCategory)
  Future<void> deleteCategory({@Path('id') required String id});

  @GET(ApiConstants.getCategoryById)
  Future<GetCategoryByIdResponse> getCategoryById({
    @Path('id') required String id,
  });

  @PUT(ApiConstants.updateCategory)
  Future<UpdateCategoryResponse> updateCategory({
    @Body() required UpdateCategoryRequestBody body,
    @Path('id') required String id,
  });

  // Products
  @GET(ApiConstants.getProducts)
  Future<GetProductsResponse> getProducts({
    @Body() required GetProductsRequestBody body,
  });

  // Cart
  @GET(ApiConstants.getCartItems)
  Future<GetCartItemsResponse> getCartItems();

  @POST(ApiConstants.addCartItem)
  Future<AddCartItemResponse> addCartItem({
    @Body() required AddCartItemRequestBody body,
  });

  @POST(ApiConstants.decrementCartItem)
  Future<DecrementCartItemResponse> decrementCartItem({
    @Body() required DecrementCartItemRequestBody body,
  });

  @POST(ApiConstants.applyCoupon)
  Future<ApplyCouponResponse> applyCoupon({
    @Body() required ApplyCouponRequestBody body,
  });

  @DELETE(ApiConstants.deleteCartItem)
  Future<void> deleteCartItem({
    @Path('id') required String id,
    @Body() required DeleteCartItemRequestBody body,
  });

  @PUT(ApiConstants.updateCartItem)
  Future<UpdateCartItemResponse> updateCartItem({
    @Body() required UpdateCartItemRequestBody body,
    @Path('id') required String id,
  });
}
