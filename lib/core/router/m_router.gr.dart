// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'm_router.dart';

class _$MRouter extends RootStackRouter {
  _$MRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.onboardingGuard,
  }) : super(navigatorKey);

  final OnboardingGuard onboardingGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          showLeading: args.showLeading,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    VerificationRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const VerificationPage(),
      );
    },
    VerificationFeedbackRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const VerificationFeedbackPage(),
      );
    },
    ForgotPasswordOtpRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordOtpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
      );
    },
    ResetPasswordFeedbackRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordFeedbackPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordPage(),
      );
    },
    LayoutRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LayoutPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
          guards: [onboardingGuard],
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        RouteConfig(
          VerificationRoute.name,
          path: '/verification-page',
        ),
        RouteConfig(
          VerificationFeedbackRoute.name,
          path: '/verification-feedback-page',
        ),
        RouteConfig(
          ForgotPasswordOtpRoute.name,
          path: '/forgot-password-otp-page',
        ),
        RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        RouteConfig(
          ResetPasswordFeedbackRoute.name,
          path: '/reset-password-feedback-page',
        ),
        RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        ),
        RouteConfig(
          LayoutRoute.name,
          path: '/layout-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    bool showLeading = true,
  }) : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(
            key: key,
            showLeading: showLeading,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.showLeading = true,
  });

  final Key? key;

  final bool showLeading;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, showLeading: $showLeading}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [VerificationPage]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute()
      : super(
          VerificationRoute.name,
          path: '/verification-page',
        );

  static const String name = 'VerificationRoute';
}

/// generated route for
/// [VerificationFeedbackPage]
class VerificationFeedbackRoute extends PageRouteInfo<void> {
  const VerificationFeedbackRoute()
      : super(
          VerificationFeedbackRoute.name,
          path: '/verification-feedback-page',
        );

  static const String name = 'VerificationFeedbackRoute';
}

/// generated route for
/// [ForgotPasswordOtpPage]
class ForgotPasswordOtpRoute extends PageRouteInfo<void> {
  const ForgotPasswordOtpRoute()
      : super(
          ForgotPasswordOtpRoute.name,
          path: '/forgot-password-otp-page',
        );

  static const String name = 'ForgotPasswordOtpRoute';
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [ResetPasswordFeedbackPage]
class ResetPasswordFeedbackRoute extends PageRouteInfo<void> {
  const ResetPasswordFeedbackRoute()
      : super(
          ResetPasswordFeedbackRoute.name,
          path: '/reset-password-feedback-page',
        );

  static const String name = 'ResetPasswordFeedbackRoute';
}

/// generated route for
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [LayoutPage]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute()
      : super(
          LayoutRoute.name,
          path: '/layout-page',
        );

  static const String name = 'LayoutRoute';
}
