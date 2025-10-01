import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/helpers/extensions.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';

Future<bool> checkIfLoggedInUser() async {
  bool rememberMe = CacheHelper.getBool(key: kRememberMe);
  String? accessToken = await CacheHelper.getSecureData(key: kAccessToken);
  if (accessToken.isNullOrEmpty() && !rememberMe) {
    return false;
  } else {
    return true;
  }
}
