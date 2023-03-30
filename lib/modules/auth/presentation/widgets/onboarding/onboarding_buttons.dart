import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/onboarding/onboarding_notifier.dart';

class OnboardingButtons extends ConsumerWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(onboardingProvider);
    final event = ref.watch(onboardingProvider.notifier);

    return Visibility(
      visible: !event.isSkipVisible() && count != 0,
      child: Column(
        children: [
          MSize.vS(49),
          Wrap(
            children: [
              MButton(
                title: 'Login',
                fontSize: MSize.fS(16),
                onPressed: () {
                  event.onboardComplete();
                  AutoRouter.of(context).push(LoginRoute());
                },
              ),
              OutlinedButton(
                onPressed: () {
                  event.onboardComplete();
                  AutoRouter.of(context).push(LoginRoute());
                },
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(MSize.w(104), MSize.r(53)),
                  side: const BorderSide(color: Color(0xFF170B2B)),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: MColors.menoPurple,
                    fontSize: MSize.fS(16),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              MSize.hS(15),
              MButton(
                title: 'Get Started',
                fontSize: MSize.fS(16),
                fixedSize: Size(MSize.w(223), MSize.r(53)),
                onPressed: () {
                  event.onboardComplete();
                  AutoRouter.of(context).push(const RegisterRoute());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
