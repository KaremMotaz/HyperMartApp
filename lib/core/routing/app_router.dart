import 'package:go_router/go_router.dart';
import 'package:hyper_mart_app/features/auth/presentation/views/forgot_password_otp_view.dart';
import 'package:hyper_mart_app/features/auth/presentation/views/forgot_password_view.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/otp_verification_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/main_view/main_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.loginView,
          builder: (context, state) {
            return const LoginView();
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
        GoRoute(
          path: Routes.forgotPasswordView,
          builder: (context, state) {
            return const ForgotPasswordView();
          },
        ),
        GoRoute(
          path: Routes.forgotPasswordOtpView,
          builder: (context, state) {
            return const ForgotPasswordOtpView();
          },
        ),
        GoRoute(
          path: Routes.mainView,
          builder: (context, state) {
            return const MainView();
          },
        ),
      ],
    );
  }
}
