import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/backend_endpoint.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';
import 'package:retrofit/retrofit.dart';
part 'categories_datasource.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class CategoriesDatasource {
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET(BackendEndpoint.getCategories)
  Future<CategoriesResponse> getCategories();
}
