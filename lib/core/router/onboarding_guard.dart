// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';


class OnboardingGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final preferences = di<SharedPreferencesService>();

    bool isOnboard = preferences.hasKey(MKeys.onboardingInit);

    if (!isOnboard) {
      Logger().i('NOT ONBOARDED');
      router.replaceAll([const OnboardingRoute()]);
    } else {
      Logger().i('ONBOARDED');
      resolver.next(true);
    }
  }
}
