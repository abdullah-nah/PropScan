part of 'router_config.dart';

abstract final class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.kSplashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.kSignInScreen,
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.kSignUpScreen,
        builder: (context, state) => SignUpScreen(),
      ),
    ],
  );
}
