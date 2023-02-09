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
    LayoutRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LayoutPage(),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionsPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    BlogDetailsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const BlogDetailsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          goToBible: args.goToBible,
        ),
      );
    },
    BibleRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const BiblePage(),
      );
    },
    NotesRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NotesPage(),
      );
    },
    BlogRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const BlogPage(),
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
              BibleRoute.name,
              path: 'bible-page',
              parent: LayoutRoute.name,
            ),
            RouteConfig(
              NotesRoute.name,
              path: 'notes-page',
              parent: LayoutRoute.name,
            ),
            RouteConfig(
              BlogRoute.name,
              path: 'blog-page',
              parent: LayoutRoute.name,
            ),
          ],
        ),
        RouteConfig(
          TermsAndConditionsRoute.name,
          path: '/terms-and-conditions-page',
        ),
        RouteConfig(
          PrivacyPolicyRoute.name,
          path: '/privacy-policy-page',
        ),
        RouteConfig(
          AboutRoute.name,
          path: '/about-page',
        ),
        RouteConfig(
          BlogDetailsRoute.name,
          path: '/blog-details-page',
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
/// [TermsAndConditionsPage]
class TermsAndConditionsRoute extends PageRouteInfo<void> {
  const TermsAndConditionsRoute()
      : super(
          TermsAndConditionsRoute.name,
          path: '/terms-and-conditions-page',
        );

  static const String name = 'TermsAndConditionsRoute';
}

/// generated route for
/// [PrivacyPolicyPage]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute()
      : super(
          PrivacyPolicyRoute.name,
          path: '/privacy-policy-page',
        );

  static const String name = 'PrivacyPolicyRoute';
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: '/about-page',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [BlogDetailsPage]
class BlogDetailsRoute extends PageRouteInfo<void> {
  const BlogDetailsRoute()
      : super(
          BlogDetailsRoute.name,
          path: '/blog-details-page',
        );

  static const String name = 'BlogDetailsRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    required void Function() goToBible,
  }) : super(
          HomeRoute.name,
          path: 'home-page',
          args: HomeRouteArgs(
            key: key,
            goToBible: goToBible,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.goToBible,
  });

  final Key? key;

  final void Function() goToBible;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, goToBible: $goToBible}';
  }
}

/// generated route for
/// [BiblePage]
class BibleRoute extends PageRouteInfo<void> {
  const BibleRoute()
      : super(
          BibleRoute.name,
          path: 'bible-page',
        );

  static const String name = 'BibleRoute';
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
/// [BlogPage]
class BlogRoute extends PageRouteInfo<void> {
  const BlogRoute()
      : super(
          BlogRoute.name,
          path: 'blog-page',
        );

  static const String name = 'BlogRoute';
}
