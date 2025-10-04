import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/backend_endpoint.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_category_response.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_category_by_id_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_response.dart';
import 'package:retrofit/retrofit.dart';
part 'categories_datasource.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class CategoriesDatasource {
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET(BackendEndpoint.getCategories)
  Future<GetCategoriesModel> getCategories();

  @POST(BackendEndpoint.addCategory)
  Future<AddCategoryResponse> addCategory({
    @Body() required AddCategoryRequest body,
  });

  @DELETE(BackendEndpoint.deleteCategory)
  Future<void> deleteCategory({@Path('id') required String id});

  @GET(BackendEndpoint.getCategoryById)
  Future<GetCategoryByIdModel> getCategoryById({
    @Path('id') required String id,
  });

  @PUT(BackendEndpoint.updateCategory)
  Future<UpdateCategoryResponse> updateCategory({
    @Body() required UpdateCategoryRequest body,
    @Path('id') required String id,
  });
}
