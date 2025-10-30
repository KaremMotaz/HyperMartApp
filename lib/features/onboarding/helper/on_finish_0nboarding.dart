import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/routing/routes.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';

void onFinishOnboarding(BuildContext context) async {
  await CacheHelper.set(key: kHasSeenOnboarding, value: true);
  if (context.mounted) {
    GoRouter.of(context).pushReplacement(Routes.loginView);
  }
}
