import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/otp_verification_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/main_view/main_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: Routes.signUpView,
          builder: (context, state) {
            return const SignupView();
          },
        ),
        GoRoute(
          path: Routes.otpVerificationView,
          builder: (context, state) {
            return const OtpVerificationView();
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
