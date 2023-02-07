import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/core/router/onboarding_guard.dart';
import 'package:meno_fe_v2/layout/about_page.dart';
import 'package:meno_fe_v2/layout/blog_page.dart';
import 'package:meno_fe_v2/layout/home_page.dart';
import 'package:meno_fe_v2/layout/layout_page.dart';
import 'package:meno_fe_v2/layout/notes_page.dart';
import 'package:meno_fe_v2/layout/onboarding/onboarding_page.dart';
import 'package:meno_fe_v2/layout/privacy_policy_page.dart';
import 'package:meno_fe_v2/layout/terms_and_conditions_page.dart';
import 'package:meno_fe_v2/modules/bible/presentation/pages/bible_page.dart';
import 'package:meno_fe_v2/splash_page.dart';

part 'm_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(
      page: LayoutPage,
      guards: [OnboardingGuard],
      children: [
        AutoRoute(page: HomePage),
        AutoRoute(page: BiblePage),
        AutoRoute(page: NotesPage),
        AutoRoute(page: BlogPage),
      ],
    ),
    AutoRoute(page: TermsAndConditionsPage),
    AutoRoute(page: PrivacyPolicyPage),
    AutoRoute(page: AboutPage),
  ],
)
class MRouter extends _$MRouter {
  MRouter({required super.onboardingGuard});
}
