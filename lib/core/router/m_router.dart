import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/layout/layout_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/onboarding/onboarding_page.dart';
import 'package:meno_fe_v2/splash_page.dart';
import 'package:meno_fe_v2/core/router/onboarding_guard.dart';

part 'm_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(
      page: LayoutPage,
      guards: [OnboardingGuard],
    ),
  ],
)
class MRouter extends _$MRouter {
  MRouter({
    required super.onboardingGuard,
  });
}
