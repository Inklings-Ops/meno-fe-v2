import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_items.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';

final onboardingProvider = StateNotifierProvider<OnboardingNotifier, int>(
  (ref) => OnboardingNotifier(di<SharedPreferencesService>()),
);

class OnboardingNotifier extends StateNotifier<int> {
  final SharedPreferencesService _pref;

  OnboardingNotifier(this._pref) : super(0);

  late Timer? timer, animationTimer;

  Future<void> onboardComplete() async {
    await _pref.write(key: MKeys.onboardingInit, value: 1);
  }

  void cancelTimer() {
    timer?.cancel();
    animationTimer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    animationTimer?.cancel();
    super.dispose();
  }

  void handleSwipe(details) {
    if (details.primaryVelocity == 0) {
      return;
    } else if (details.primaryVelocity.compareTo(0) == -1) {
      next();
      cancelTimer();
    } else {
      previous();
      cancelTimer();
    }
  }

  void initialize(AnimationController controller) async {
    timer = Timer.periodic(const Duration(milliseconds: 3500), (_) {
      if (state == 2) {
        cancelTimer();
      }
      next();
    });

    animationTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (controller.status == AnimationStatus.completed) {
        cancelTimer();
      } else if (controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  bool isSkipVisible() {
    return state != 0 && state != onboardingItems.length - 1;
  }

  void next() {
    if (state == onboardingItems.length - 1) {
      return;
    }
    if (state < onboardingItems.length - 1) {
      state++;
    } else {
      state = 0;
    }
  }

  void previous() {
    if (state == 0) {
      return;
    }
    cancelTimer();
    if (state > 0) {
      state--;
    } else if (state == 0) {
      state = onboardingItems.length - 1;
    } else {
      state = 0;
    }
  }

  void skip() {
    state = 3;
    cancelTimer();
  }
}
