import 'package:dio/dio.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
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

  @GET(ApiConstants.getCategories)
  Future<GetCategoriesResponse> getCategories();

  @POST(ApiConstants.addCategory)
  Future<AddCategoryResponse> addCategory({
    @Body() required AddCategoryRequest body,
  });

  @DELETE(ApiConstants.deleteCategory)
  Future<void> deleteCategory({@Path('id') required String id});

  @GET(ApiConstants.getCategoryById)
  Future<GetCategoryByIdResponse> getCategoryById({
    @Path('id') required String id,
  });

  @PUT(ApiConstants.updateCategory)
  Future<UpdateCategoryResponse> updateCategory({
    @Body() required UpdateCategoryRequest body,
    @Path('id') required String id,
  });

  @GET(ApiConstants.getProducts)
  Future<GetProductsResponse> getProducts({
    @Body() required GetProductsRequestBody body,
  });
}
