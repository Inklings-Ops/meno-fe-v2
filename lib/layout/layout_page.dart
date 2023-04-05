import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/layout/loading_page.dart';
import 'package:meno_fe_v2/layout/widgets/exit_alert_dialog.dart';
import 'package:meno_fe_v2/layout/widgets/m_admin_bottom_navigation_bar.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';
import 'package:meno_fe_v2/layout/widgets/m_guest_bottom_navigation_bar.dart';
import 'package:meno_fe_v2/layout/widgets/network_dialog.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_return_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/bible_app_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/home_app_bar.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_app_bar.dart';
import 'package:meno_fe_v2/services/network/network_notifier.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const items = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(MIcons.Home1)),
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

    void initLoad() {
      if (preferences.hasKey(MKeys.initLogin) == false) {
        preferences.write(key: MKeys.initLogin, value: 1);
      }
      ref.read(profileProvider.notifier).authProfileLoaded();
    }

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => null,
        adminAuth: (_) async => initLoad(),
        guestAuth: (_) async => initLoad(),
      );
    });

    ref.listen<NetworkStatus>(networkProvider, (previous, next) {
      switch (next) {
        case NetworkStatus.disconnected:
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const NetworkDialog(),
          );
          break;
        default:
      }
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
        unauthenticated: (_) => const LoginPage(showLeading: false),
        adminAuth: (a) => const _AdminLayout(),
        guestAuth: (a) => const _GuestLayout(),
      ),
    );
  }
}

class _AdminLayout extends HookWidget {
  const _AdminLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layoutTabRouter = useState<TabsRouter?>(null);

    final routes = <PageRouteInfo<dynamic>>[
      HomeRoute(goTo: (v) => layoutTabRouter.value?.setActiveIndex(v)),
      BibleRoute(),
      const BlogRoute(),
      const AdminProfileRoute(),
    ];

    return AutoTabsScaffold(
      scaffoldKey: MKeys.layoutScaffoldKey,
      extendBodyBehindAppBar: true,
      routes: routes,
      appBarBuilder: (context, tabsRouter) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          layoutTabRouter.value = tabsRouter;
        });
        void onAvatarPressed() => tabsRouter.setActiveIndex(3);

        switch (tabsRouter.activeIndex) {
          case 0:
            return HomeAppBar(onAvatarPressed: onAvatarPressed);
          case 1:
            return BibleAppBar(onAvatarPressed: onAvatarPressed);
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
      bottomNavigationBuilder: (context, tabsRouter) {
        return MAdminBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: items,
        );
      },
    );
  }
}

class _GuestLayout extends HookWidget {
  const _GuestLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layoutTabRouter = useState<TabsRouter?>(null);

    final routes = <PageRouteInfo<dynamic>>[
      GuestHomeRoute(goTo: (v) => layoutTabRouter.value?.setActiveIndex(v)),
      BibleRoute(),
      const BlogRoute(),
      const GuestProfileRoute(),
    ];

    return AutoTabsScaffold(
      scaffoldKey: MKeys.layoutScaffoldKey,
      extendBodyBehindAppBar: true,
      routes: routes,
      appBarBuilder: (context, tabsRouter) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          layoutTabRouter.value = tabsRouter;
        });
        void onAvatarPressed() => tabsRouter.setActiveIndex(3);

        switch (tabsRouter.activeIndex) {
          case 0:
            return HomeAppBar(onAvatarPressed: onAvatarPressed);
          case 1:
            return BibleAppBar(onAvatarPressed: onAvatarPressed);
          case 3:
            return AppBar(toolbarHeight: MSize.r(0));
          default:
            return MAppBar(
              title: tabsRouter.current.name.split('R')[0],
              onAvatarPressed: onAvatarPressed,
              showBorder: false,
            );
        }
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return MGuestBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: items,
        );
      },
    );
  }
}
