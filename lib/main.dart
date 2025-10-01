import 'package:flutter/material.dart';
import 'package:hyper_mart_app/core/functions/check_if_logged_in_user.dart';

import 'core/services/cache_helper.dart';
import 'core/services/get_it_service.dart';
import 'hyper_mart_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  await CacheHelper.init();
  final bool isLoggedInUser = await checkIfLoggedInUser();

  runApp(HyperMartApp(checkIfLoggedInUser: isLoggedInUser));
}
