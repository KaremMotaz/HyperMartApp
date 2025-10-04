import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/backend_endpoint.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
import 'package:retrofit/retrofit.dart';
part 'categories_datasource.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class CategoriesDatasource {
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET(BackendEndpoint.getCategories)
  Future<GetCategoriesModel> getCategories();

  @POST(BackendEndpoint.addCategory)
  Future<void> addCategory({@Body() required AddCategoryModel body});

  @DELETE(BackendEndpoint.deleteCategory)
  Future<void> deleteCategory({@Path('id') required String id});
}
