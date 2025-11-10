import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_review_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_reviews_repo.dart';
import 'package:hyper_mart_app/features/home/manager/add_review_cubit/add_review_cubit.dart';
import 'package:hyper_mart_app/features/home/manager/cart_cubit/cart_cubit.dart';
import 'package:hyper_mart_app/features/home/manager/cubit/review_sheet_cubit.dart';
import 'package:hyper_mart_app/features/home/manager/favourite_products_cubit/favourite_products_cubit.dart';
import 'package:hyper_mart_app/features/home/manager/get_reviews_cubit/get_reviews_cubit.dart';
import 'package:hyper_mart_app/features/home/presentation/views/checkout_view.dart';
import 'package:hyper_mart_app/features/home/presentation/views/product_detail_view.dart';
import 'package:hyper_mart_app/features/home/presentation/views/product_reviews_view.dart';
import '../../features/home/presentation/views/cart_view.dart';
import '../../features/home/presentation/views/all_products_view.dart';
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
            final extra = state.extra as Map<String, dynamic>;
            final cartCubit = extra['cartCubit'] as CartCubit;
            final favouriteCubit =
                extra['favouriteCubit'] as FavouriteProductsCubit;
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: cartCubit),
                BlocProvider.value(value: favouriteCubit),
              ],
              child: const AllProductsView(),
            );
          },
        ),
        GoRoute(
          path: Routes.productDetailView,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final cartCubit = extra['cartCubit'] as CartCubit;
            final favouriteCubit =
                extra['favouriteCubit'] as FavouriteProductsCubit;
            final product = extra['product'] as ProductModel;
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: cartCubit),
                BlocProvider.value(value: favouriteCubit),
              ],
              child: ProductDetailView(product: product),
            );
          },
        ),
        GoRoute(
          path: Routes.productReviewsView,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final product = extra['product'] as ProductModel;
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => GetReviewsCubit(
                    getReviewsRepo: getIt.get<GetReviewsRepo>(),
                  )..getReviews(productId: product.id),
                ),
                BlocProvider(
                  create: (context) =>
                      AddReviewCubit(addReviewRepo: getIt.get<AddReviewRepo>()),
                ),
                BlocProvider(create: (context) => ReviewSheetCubit()),
              ],
              child: ProductReviewsView(product: product),
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
