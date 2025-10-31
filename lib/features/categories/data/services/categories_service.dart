import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/networking/api_constants.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_category_response.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_response.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_category_by_id_response.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_response.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CategoriesService {
  factory CategoriesService(Dio dio) = _CategoriesService;

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
}
