import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/helpers/hive_config.dart';
import 'core/services/cache_helper.dart';
import 'core/services/get_it_service.dart';
import 'features/app/hyper_mart_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.init();
  await setupGetIt();
  await CacheHelper.init();

  runApp(const HyperMartApp());
}
