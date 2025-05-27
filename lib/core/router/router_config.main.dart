part of 'router_config.dart';

abstract final class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.kSignInScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.kSignUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRoutes.kHomeScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => HomeCubit(),
              child: const HomeScreen(),
            ),
      ),
    ],
  );
}
