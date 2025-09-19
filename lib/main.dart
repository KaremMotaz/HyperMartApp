import 'package:flutter/material.dart';

import 'core/services/cache_helper.dart';
import 'core/services/get_it_service.dart';
import 'hyper_mart_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await CacheHelper.init();
  runApp(const HyperMartApp());
}
