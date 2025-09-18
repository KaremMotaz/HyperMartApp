import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../services/get_it_service.dart';
import '../../features/auth/domain/auth_repo.dart';
import '../../features/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/auth/presentation/views/forgot_password_otp_view.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
import '../../features/auth/presentation/views/reset_password_view.dart';

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
          builder: (context, state) {
            return const MainView();
          },
        ),
      ],
    );
  }
}
