import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/loading_page.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/login_return/login_return_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_return_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/home_app_bar.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_app_bar.dart';

const items = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(MIcons.Home1)),
  BottomNavigationBarItem(label: 'Search', icon: Icon(MIcons.Search1)),
  BottomNavigationBarItem(label: 'Notes', icon: Icon(MIcons.Paper1)),
  BottomNavigationBarItem(label: 'Profile', icon: Icon(MIcons.Profile1)),
];
const routes = [HomeRoute(), DiscoverRoute(), NotesRoute(), ProfileRoute()];

class LayoutPage extends ConsumerWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => null,
        partiallyUnauthenticated: () {
          ref.watch(loginReturnProvider.notifier).init();
        },
        authenticated: (_) {
          ref.read(profileProvider.notifier).authProfileLoaded();
        },
      );
    });

    return state.maybeMap(
      orElse: () => const LoadingPage(),
      verified: (_) => const VerificationFeedbackPage(),
      unverified: (_) => const VerificationPage(),
      partiallyUnauthenticated: (_) => const LoginReturnPage(),
      unauthenticated: (_) => LoginPage(
        showLeading: AutoRouter.of(context).canNavigateBack,
      ),
      authenticated: (a) => AutoTabsScaffold(
        key: MKeys.layoutScaffoldKey,
        extendBodyBehindAppBar: true,
        routes: routes,
        appBarBuilder: (context, tabsRouter) {
          void onAvatarPressed() => tabsRouter.setActiveIndex(3);

          switch (tabsRouter.activeIndex) {
            case 0:
              return HomeAppBar(onAvatarPressed: onAvatarPressed);
            case 3:
              return const ProfileAppBar();
            default:
              return MAppBar(
                title: tabsRouter.current.name.split('R')[0],
                onAvatarPressed: onAvatarPressed,
              );
          }
        },
        bottomNavigationBuilder: (context, tabsRouter) => MBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: items,
        ),
      ),
    );
  }
}
