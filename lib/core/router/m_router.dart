import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/core/router/onboarding_guard.dart';
import 'package:meno_fe_v2/layout/about_page.dart';
import 'package:meno_fe_v2/layout/layout_page.dart';
import 'package:meno_fe_v2/layout/privacy_policy_page.dart';
import 'package:meno_fe_v2/layout/terms_and_conditions_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/forgot_password/forgot_password_otp_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/forgot_password/reset_password_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/forgot_password/reset_password_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_return_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/onboarding/onboarding_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/register/register_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';
import 'package:meno_fe_v2/modules/bible/presentation/pages/bible_page.dart';
import 'package:meno_fe_v2/modules/blog/presentation/pages/blog_details_page.dart';
import 'package:meno_fe_v2/modules/blog/presentation/pages/blog_page.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/broadcast_feedback_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/broadcast_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/create_broadcast_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/discover_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/home_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/pages/stream_page.dart';
import 'package:meno_fe_v2/modules/notes/presentation/pages/notes_page.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/guest_profile_page.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/other_user_profile_page.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/admin_profile_page.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/recent_broadcasts_list_page.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/security_page.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/settings_page.dart';
import 'package:meno_fe_v2/splash_page.dart';

part 'm_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: AuthPage, guards: [OnboardingGuard]),
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: ForgotPasswordOtpPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: ResetPasswordFeedbackPage),
    AutoRoute(page: ResetPasswordPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: VerificationPage),
    AutoRoute(page: VerificationFeedbackPage),
    AutoRoute(page: LoginReturnPage),
    AutoRoute(
      page: LayoutPage,
      guards: [OnboardingGuard],
      children: [
        AutoRoute(page: HomePage),
        AutoRoute(page: GuestHomePage),
        AutoRoute(page: DiscoverPage),
        AutoRoute(page: NotesPage),
        AutoRoute(page: AdminProfilePage),
        AutoRoute(page: BlogPage),
        AutoRoute(page: GuestProfilePage),
        AutoRoute(page: BiblePage),
      ],
    ),
    AutoRoute(page: AboutPage),
    AutoRoute(page: CreateBroadcastPage),
    AutoRoute(page: BroadcastPage),
    AutoRoute(page: BroadcastFeedbackPage),
    AutoRoute(page: StreamPage),
    AutoRoute(page: OtherUserProfilePage),
    AutoRoute(page: RecentBroadcastListPage),
    AutoRoute(page: BlogDetailsPage),
    AutoRoute(page: TermsAndConditionsPage),
    AutoRoute(page: PrivacyPolicyPage),
    AutoRoute(page: SettingsPage),
    AutoRoute(page: SecurityPage),
  ],
)
class MRouter extends _$MRouter {
  MRouter({required super.onboardingGuard});
}
