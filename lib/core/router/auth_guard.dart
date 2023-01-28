// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';

class AuthGuard extends AutoRouteGuard {
  final WidgetRef _ref;
  AuthGuard(this._ref) {
    _ref.read(authProvider.notifier).checkAuthenticated();
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final state = _ref.read(authProvider);

    state.maybeMap(
      orElse: () => Logger().i('OR ELSE'),
      initial: (_) => Logger().i('INITIAL'),
      verified: (_) => Logger().i('VERIFIED'),
      unverified: (_) {
        // router.replaceAll([const VerificationRoute()]);
      },
      unauthenticated: (_) {
        router.replaceAll([LoginRoute(showLeading: false)]);
      },
      partiallyUnauthenticated: (_) {
        // router.replaceAll([SignInReturnRoute()]);
      },
      authenticated: (a) {
        resolver.next(true);
      },
    );
  }
}
