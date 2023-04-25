import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/onboarding/onboarding_notifier.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/onboarding_items.dart';

class OnboardingContent extends ConsumerWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(onboardingProvider);
    final item = onboardingItems[count];

    return IntrinsicWidth(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: MSize.h(10),
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF131313),
                  letterSpacing: 0.36,
                  fontWeight: FontWeight.w700,
                  fontSize: MSize.fS(30),
                ),
              ),
            ],
          ),
          MSize.vS(22),
          Container(
            alignment: Alignment.center,
            child: Text(
              item.body,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF131313),
                letterSpacing: 0.36,
                fontWeight: FontWeight.w400,
                fontSize: MSize.fS(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
