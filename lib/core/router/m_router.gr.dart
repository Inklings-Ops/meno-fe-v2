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
    RegisterRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
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
    LoginReturnRoute.name: (routeData) {
      final args = routeData.argsAs<LoginReturnRouteArgs>(
          orElse: () => const LoginReturnRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: LoginReturnPage(
          key: args.key,
          showLeading: args.showLeading,
        ),
      );
    },
    LayoutRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LayoutPage(),
      );
    },
    CreateBroadcastRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const CreateBroadcastPage(),
      );
    },
    BroadcastRoute.name: (routeData) {
      final args = routeData.argsAs<BroadcastRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: BroadcastPage(
          key: args.key,
          broadcast: args.broadcast,
        ),
      );
    },
    BroadcastFeedbackRoute.name: (routeData) {
      final args = routeData.argsAs<BroadcastFeedbackRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: BroadcastFeedbackPage(
          key: args.key,
          broadcast: args.broadcast,
        ),
      );
    },
    StreamRoute.name: (routeData) {
      final args = routeData.argsAs<StreamRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: StreamPage(
          key: args.key,
          broadcast: args.broadcast,
        ),
      );
    },
    OtherUserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<OtherUserProfileRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: OtherUserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    RecentBroadcastListRoute.name: (routeData) {
      final args = routeData.argsAs<RecentBroadcastListRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: RecentBroadcastListPage(
          key: args.key,
          profile: args.profile,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          onDiscoverPressed: args.onDiscoverPressed,
        ),
      );
    },
    DiscoverRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DiscoverPage(),
      );
    },
    NotesRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NotesPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
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
          RegisterRoute.name,
          path: '/register-page',
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
          LoginRoute.name,
          path: '/login-page',
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
          LoginReturnRoute.name,
          path: '/login-return-page',
        ),
        RouteConfig(
          LayoutRoute.name,
          path: '/layout-page',
          guards: [onboardingGuard],
          children: [
            RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: LayoutRoute.name,
            ),
            RouteConfig(
              DiscoverRoute.name,
              path: 'discover-page',
              parent: LayoutRoute.name,
            ),
            RouteConfig(
              NotesRoute.name,
              path: 'notes-page',
              parent: LayoutRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: LayoutRoute.name,
            ),
          ],
        ),
        RouteConfig(
          CreateBroadcastRoute.name,
          path: '/create-broadcast-page',
        ),
        RouteConfig(
          BroadcastRoute.name,
          path: '/broadcast-page',
        ),
        RouteConfig(
          BroadcastFeedbackRoute.name,
          path: '/broadcast-feedback-page',
        ),
        RouteConfig(
          StreamRoute.name,
          path: '/stream-page',
        ),
        RouteConfig(
          OtherUserProfileRoute.name,
          path: '/other-user-profile-page',
        ),
        RouteConfig(
          RecentBroadcastListRoute.name,
          path: '/recent-broadcast-list-page',
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
/// [LoginReturnPage]
class LoginReturnRoute extends PageRouteInfo<LoginReturnRouteArgs> {
  LoginReturnRoute({
    Key? key,
    bool showLeading = false,
  }) : super(
          LoginReturnRoute.name,
          path: '/login-return-page',
          args: LoginReturnRouteArgs(
            key: key,
            showLeading: showLeading,
          ),
        );

  static const String name = 'LoginReturnRoute';
}

class LoginReturnRouteArgs {
  const LoginReturnRouteArgs({
    this.key,
    this.showLeading = false,
  });

  final Key? key;

  final bool showLeading;

  @override
  String toString() {
    return 'LoginReturnRouteArgs{key: $key, showLeading: $showLeading}';
  }
}

/// generated route for
/// [LayoutPage]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute({List<PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          path: '/layout-page',
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';
}

/// generated route for
/// [CreateBroadcastPage]
class CreateBroadcastRoute extends PageRouteInfo<void> {
  const CreateBroadcastRoute()
      : super(
          CreateBroadcastRoute.name,
          path: '/create-broadcast-page',
        );

  static const String name = 'CreateBroadcastRoute';
}

/// generated route for
/// [BroadcastPage]
class BroadcastRoute extends PageRouteInfo<BroadcastRouteArgs> {
  BroadcastRoute({
    Key? key,
    required Broadcast broadcast,
  }) : super(
          BroadcastRoute.name,
          path: '/broadcast-page',
          args: BroadcastRouteArgs(
            key: key,
            broadcast: broadcast,
          ),
        );

  static const String name = 'BroadcastRoute';
}

class BroadcastRouteArgs {
  const BroadcastRouteArgs({
    this.key,
    required this.broadcast,
  });

  final Key? key;

  final Broadcast broadcast;

  @override
  String toString() {
    return 'BroadcastRouteArgs{key: $key, broadcast: $broadcast}';
  }
}

/// generated route for
/// [BroadcastFeedbackPage]
class BroadcastFeedbackRoute extends PageRouteInfo<BroadcastFeedbackRouteArgs> {
  BroadcastFeedbackRoute({
    Key? key,
    required Broadcast broadcast,
  }) : super(
          BroadcastFeedbackRoute.name,
          path: '/broadcast-feedback-page',
          args: BroadcastFeedbackRouteArgs(
            key: key,
            broadcast: broadcast,
          ),
        );

  static const String name = 'BroadcastFeedbackRoute';
}

class BroadcastFeedbackRouteArgs {
  const BroadcastFeedbackRouteArgs({
    this.key,
    required this.broadcast,
  });

  final Key? key;

  final Broadcast broadcast;

  @override
  String toString() {
    return 'BroadcastFeedbackRouteArgs{key: $key, broadcast: $broadcast}';
  }
}

/// generated route for
/// [StreamPage]
class StreamRoute extends PageRouteInfo<StreamRouteArgs> {
  StreamRoute({
    Key? key,
    required Broadcast broadcast,
  }) : super(
          StreamRoute.name,
          path: '/stream-page',
          args: StreamRouteArgs(
            key: key,
            broadcast: broadcast,
          ),
        );

  static const String name = 'StreamRoute';
}

class StreamRouteArgs {
  const StreamRouteArgs({
    this.key,
    required this.broadcast,
  });

  final Key? key;

  final Broadcast broadcast;

  @override
  String toString() {
    return 'StreamRouteArgs{key: $key, broadcast: $broadcast}';
  }
}

/// generated route for
/// [OtherUserProfilePage]
class OtherUserProfileRoute extends PageRouteInfo<OtherUserProfileRouteArgs> {
  OtherUserProfileRoute({
    Key? key,
    required String userId,
  }) : super(
          OtherUserProfileRoute.name,
          path: '/other-user-profile-page',
          args: OtherUserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'OtherUserProfileRoute';
}

class OtherUserProfileRouteArgs {
  const OtherUserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'OtherUserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [RecentBroadcastListPage]
class RecentBroadcastListRoute
    extends PageRouteInfo<RecentBroadcastListRouteArgs> {
  RecentBroadcastListRoute({
    Key? key,
    required Profile profile,
  }) : super(
          RecentBroadcastListRoute.name,
          path: '/recent-broadcast-list-page',
          args: RecentBroadcastListRouteArgs(
            key: key,
            profile: profile,
          ),
        );

  static const String name = 'RecentBroadcastListRoute';
}

class RecentBroadcastListRouteArgs {
  const RecentBroadcastListRouteArgs({
    this.key,
    required this.profile,
  });

  final Key? key;

  final Profile profile;

  @override
  String toString() {
    return 'RecentBroadcastListRouteArgs{key: $key, profile: $profile}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    void Function()? onDiscoverPressed,
  }) : super(
          HomeRoute.name,
          path: 'home-page',
          args: HomeRouteArgs(
            key: key,
            onDiscoverPressed: onDiscoverPressed,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.onDiscoverPressed,
  });

  final Key? key;

  final void Function()? onDiscoverPressed;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, onDiscoverPressed: $onDiscoverPressed}';
  }
}

/// generated route for
/// [DiscoverPage]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: 'discover-page',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [NotesPage]
class NotesRoute extends PageRouteInfo<void> {
  const NotesRoute()
      : super(
          NotesRoute.name,
          path: 'notes-page',
        );

  static const String name = 'NotesRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
