import '../helpers/constants.dart';
import '../helpers/extensions.dart';
import '../services/cache_helper.dart';

Future<bool> checkIfLoggedInUser() async {
  bool rememberMe = CacheHelper.getBool(key: kRememberMe);
  String? accessToken = await CacheHelper.getSecureData(key: kAccessToken);

  return !accessToken.isNullOrEmpty() && rememberMe;
}
