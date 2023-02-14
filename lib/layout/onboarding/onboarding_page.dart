import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/layout/onboarding/widgets/onboarding_title.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        padding: MSize.pFromLTRB(16, 20, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/onboarding/onboarding_3.png',
              width: MSize.sh(0.38),
            ),
            MSize.vS(10),
            const OnboardingTitle('Read Bible &'),
            const OnboardingTitle('Blogs'),
            const Spacer(),
            MButton(
              title: 'Get Started',
              fontSize: MSize.fS(16),
              fixedSize: Size(MSize.w(223), MSize.r(53)),
              onPressed: () async {
                await di<SharedPreferencesService>()
                    .write(
                      key: MKeys.onboardingInit,
                      value: 1,
                    )
                    .then((value) => AutoRouter.of(context)
                        .replaceAll([const LayoutRoute()]));
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
