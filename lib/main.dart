import 'package:flutter/material.dart';
import 'core/services/get_it_service.dart';
import 'features/app/hyper_mart_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const HyperMartApp());
}
