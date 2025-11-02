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
    await Hive.openBox(kCashedDataBox);
  }
}
