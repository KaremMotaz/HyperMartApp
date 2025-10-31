import 'package:hyper_mart_app/features/categories/data/models/category_adapter.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_response_adapter.dart';

import '../helpers/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Categories
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(GetCategoriesResponseAdapter());
    await Hive.openBox(kCashedDataBox);
  }
}
