import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/loading_page.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';

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

    return state.maybeMap(
      orElse: () => const LoadingPage(),
      verified: (_) => const VerificationFeedbackPage(),
      unverified: (_) => const VerificationPage(),
      unauthenticated: (_) => LoginPage(
        showLeading: AutoRouter.of(context).canNavigateBack,
      ),
      authenticated: (a) => AutoTabsScaffold(
        key: MKeys.layoutScaffoldKey,
        routes: routes,
        bottomNavigationBuilder: (context, tabsRouter) => MBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: items,
        ),
      ),
    );
  }
}
