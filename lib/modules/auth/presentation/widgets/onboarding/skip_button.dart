import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/onboarding/onboarding_notifier.dart';

class SkipButton extends ConsumerWidget {
  const SkipButton({super.key, required this.visible});

  final bool visible;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(onboardingProvider.notifier);

    return Visibility(
      visible: event.isSkipVisible(),
      child: GestureDetector(
        onTap: event.skip,
        child: Container(
          alignment: Alignment.center,
          padding: MSize.pSymmetric(h: 16),
          child: Text(
            'Skip',
            style: TextStyle(
              fontSize: MSize.fS(16),
              color: MColors.blackText1,
            ),
          ),
        ),
      ),
    );
  }
}
