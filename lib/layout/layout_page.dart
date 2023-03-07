import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/layout/loading_page.dart';
import 'package:meno_fe_v2/layout/widgets/exit_alert_dialog.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_return_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/bible_app_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/home_app_bar.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_app_bar.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const adminBottomNavItems = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(MIcons.Home1)),
  BottomNavigationBarItem(label: 'Search', icon: Icon(MIcons.Search1)),
  BottomNavigationBarItem(label: 'Notes', icon: Icon(MIcons.Paper1)),
  BottomNavigationBarItem(label: 'Profile', icon: Icon(MIcons.Profile1)),
];

const guestBottomNavItems = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(PhosphorIcons.houseSimple)),
  BottomNavigationBarItem(label: 'Bible', icon: Icon(PhosphorIcons.book)),
  BottomNavigationBarItem(label: 'Blog', icon: Icon(PhosphorIcons.eyeglasses)),
  BottomNavigationBarItem(label: 'Profile', icon: Icon(MIcons.Profile1)),
];

class LayoutPage extends ConsumerWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = di<SharedPreferencesService>();

    final state = ref.watch(authProvider);

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => null,
        authenticated: (_) async {
          if (preferences.hasKey(MKeys.initLogin) == false) {
            preferences.write(key: MKeys.initLogin, value: 1);
          }
          ref.read(profileProvider.notifier).authProfileLoaded();
        },
      );
    });

    Future<bool> onExit() async {
      return await showDialog(
        context: context,
        builder: (context) => const ExitAlertDialog(),
      );
    }

    return WillPopScope(
      onWillPop: onExit,
      child: state.maybeMap(
        orElse: () => const LoadingPage(),
        verified: (_) => const VerificationFeedbackPage(),
        unverified: (_) => const VerificationPage(),
        partiallyUnauthenticated: (_) => const LoginReturnPage(),
        unauthenticated: (_) => LoginPage(
          showLeading: AutoRouter.of(context).canNavigateBack,
        ),
        authenticated: (a) => const _Layout(),
      ),
    );
  }
}

class _Layout extends HookConsumerWidget {
  const _Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(roleProvider).value;

    final layoutTabRouter = useState<TabsRouter?>(null);

    final adminRoutes = <PageRouteInfo<dynamic>>[
      HomeRoute(goTo: (v) => layoutTabRouter.value?.setActiveIndex(v)),
      const DiscoverRoute(),
      const NotesRoute(),
      const ProfileRoute(),
    ];

    final guestRoutes = <PageRouteInfo<dynamic>>[
      HomeRoute(goTo: (v) => layoutTabRouter.value?.setActiveIndex(v)),
      BibleRoute(),
      const BlogRoute(),
      const GuestProfileRoute(),
    ];

    return AutoTabsScaffold(
      scaffoldKey: MKeys.layoutScaffoldKey,
      // extendBodyBehindAppBar: true,
      routes: role == Role.admin ? adminRoutes : guestRoutes,
      appBarBuilder: (context, tabsRouter) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          layoutTabRouter.value = tabsRouter;
        });
        void onAvatarPressed() {
          if (role == Role.admin) {
            tabsRouter.setActiveIndex(3);
          } else {
            AutoRouter.of(context).push(const GuestProfileRoute());
          }
        }

        switch (tabsRouter.activeIndex) {
          case 0:
            return HomeAppBar(onAvatarPressed: onAvatarPressed);
          case 1:
            return const BibleAppBar();
          case 3:
            return const ProfileAppBar();
          default:
            return MAppBar(
              title: tabsRouter.current.name.split('R')[0],
              onAvatarPressed: onAvatarPressed,
              showBorder: false,
            );
        }
      },
      bottomNavigationBuilder: (context, tabsRouter) => MBottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: role == Role.guest ? guestBottomNavItems : adminBottomNavItems,
      ),
    );
  }
}
