import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/views/checkout_view.dart';
import '../../features/home/presentation/views/cart_view.dart';
import '../../features/home/presentation/views/products_view.dart';
import '../../features/home/presentation/views/categories_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/app/splash_view.dart';
import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/presentation/manager/change_password_cubit/change_password_cubit.dart';
import '../../features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/auth/presentation/views/forgot_password_otp_view.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/otp_verification_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/reset_password_view.dart';
import '../../features/main_view/main_view.dart';
import '../../features/settings/presentation/views/change_password_view.dart';
import '../../features/settings/presentation/views/profile_view.dart';
import '../functions/build_fade_transition_page.dart';
import '../services/get_it_service.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.splashView,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: Routes.onboardingView,
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(
          path: Routes.loginView,
          pageBuilder: (context, state) {
            return buildFadeTransitionPage(child: const LoginView());
          },
        ),
        GoRoute(
          path: Routes.registerView,
          builder: (context, state) {
            return const RegisterView();
          },
        ),
        GoRoute(
          path: Routes.otpVerificationView,
          builder: (context, state) {
            final String userEmail = state.extra as String;
            return OtpVerificationView(userEmail: userEmail);
          },
        ),
        ShellRoute(
          builder: (context, state, child) {
            return BlocProvider(
              create: (context) =>
                  ForgotPasswordCubit(authRepo: getIt.get<AuthRepo>()),
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: Routes.forgotPasswordView,
              builder: (context, state) => const ForgotPasswordView(),
            ),
            GoRoute(
              path: Routes.forgotPasswordOtpView,
              builder: (context, state) => const ForgotPasswordOtpView(),
            ),
            GoRoute(
              path: Routes.resetPasswordView,
              builder: (context, state) => const ResetPasswordView(),
            ),
          ],
        ),
        GoRoute(
          path: Routes.mainView,
          pageBuilder: (context, state) {
            return buildFadeTransitionPage(child: const MainView());
          },
        ),
        GoRoute(
          path: Routes.profileView,
          builder: (context, state) {
            return const ProfileView();
          },
        ),
        GoRoute(
          path: Routes.categoriesView,
          builder: (context, state) {
            return const CategoriesView();
          },
        ),
        GoRoute(
          path: Routes.productsView,
          builder: (context, state) {
            final cartCubit = state.extra as CartCubit;
            return BlocProvider.value(
              value: cartCubit,
              child: const ProductsView(),
            );
          },
        ),
        GoRoute(
          path: Routes.cartView,
          builder: (context, state) {
            final cartCubit = state.extra as CartCubit;
            return BlocProvider.value(
              value: cartCubit,
              child: const CartView(),
            );
          },
        ),
        GoRoute(
          path: Routes.checkoutView,
          builder: (context, state) {
            final cartCubit = state.extra as CartCubit;
            return BlocProvider.value(
              value: cartCubit,
              child: const CheckoutView(),
            );
          },
        ),
        GoRoute(
          path: Routes.changePasswordView,
          builder: (context, state) {
            return BlocProvider(
              create: (context) =>
                  ChangePasswordCubit(authRepo: getIt.get<AuthRepo>()),
              child: const ChangePasswordView(),
            );
          },
        ),
      ],
    );
  }
}
