import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/routing/routes.dart';
import '../../../core/services/cache_helper.dart';

void onFinishOnboarding(BuildContext context) async {
  await CacheHelper.set(key: kHasSeenOnboarding, value: true);
  if (context.mounted) {
    GoRouter.of(context).pushReplacement(Routes.loginView);
  }
}
