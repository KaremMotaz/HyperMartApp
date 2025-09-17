import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'hyper_mart_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  CacheHelper.init();
  runApp(const HyperMartApp());
}
