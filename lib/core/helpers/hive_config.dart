import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/models/categories/get_categories_response.dart';

import '../../features/home/data/models/Products/get_products_response_adapter.dart';
import '../../features/home/data/models/cart/get_cart_items_response_adapter.dart';

import '../../features/home/data/models/categories/category_adapter.dart';
import '../../features/home/data/models/categories/get_categories_response_adapter.dart';

import '../helpers/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Categories
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(GetCategoriesResponseAdapter());

    // Products
    Hive.registerAdapter(ProductModelAdapter());
    Hive.registerAdapter(GetProductsResponseAdapter());

    // CartItems
    Hive.registerAdapter(CartItemModelAdapter());
    Hive.registerAdapter(GetCartItemsResponseAdapter());

    await Hive.openBox<GetCategoriesResponse>(kCategoriesBox);
    await Hive.openBox<ProductModel>(kFavouriteProductsBox);
  }
}
