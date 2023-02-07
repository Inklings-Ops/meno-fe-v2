import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_notifier.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_items.dart';

class Dots extends ConsumerWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(onboardingProvider);
    int length = onboardingItems.length;
    List dots = List.generate(length, (index) => index);

    final selectedColor = Theme.of(context).primaryColorDark;
    const unselectedColor = Colors.black26;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < length; i++) ...[
          Container(
            height: MSize.h(
              dots[i] == count ? MSize.r(8) : MSize.r(6),
            ),
            width: MSize.h(
              dots[i] == count ? MSize.r(8) : MSize.r(6),
            ),
            margin: MSize.pSymmetric(h: 2),
            decoration: BoxDecoration(
              color: dots[i] == count ? selectedColor : unselectedColor,
              shape: BoxShape.circle,
            ),
          ),
        ]
      ],
    );
  }
}
