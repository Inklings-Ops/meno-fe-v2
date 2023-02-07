import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_item.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_items.dart';
import 'package:meno_fe_v2/layout/onboarding/application/onboarding_notifier.dart';
import 'package:meno_fe_v2/layout/onboarding/widgets/dots.dart';
import 'package:meno_fe_v2/layout/onboarding/widgets/onboarding_content.dart';
import 'package:meno_fe_v2/layout/onboarding/widgets/skip_button.dart';

class OnboardingPage extends StatefulHookConsumerWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  final animationDuration = const Duration(seconds: 8);
  late Animation<double> animation;
  final List<OnboardingItem> _allOnboardingItems = onboardingItems;

  @override
  Widget build(BuildContext context) {
    final count = ref.watch(onboardingProvider);
    final event = ref.watch(onboardingProvider.notifier);
    final item = _allOnboardingItems[count];

    final controller = useAnimationController(duration: animationDuration);

    useEffect(() {
      animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
      event.initialize(controller);
      return;
    }, const []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [SkipButton(visible: event.isSkipVisible())],
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: MSize.pFromLTRB(16, 20, 16, 0),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onHorizontalDragEnd: event.handleSwipe,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MSize.vS(56),
                Image.asset(item.imageUrl, width: MSize.w(268)),
                MSize.vS(94),
                const OnboardingContent(),
                MSize.vS(23),
                const Dots(),
                MSize.vS(50),
                Visibility(
                  visible: count == 3,
                  child: MButton(
                    title: 'Get Started',
                    fontSize: MSize.fS(16),
                    fixedSize: Size(MSize.w(223), MSize.r(53)),
                    onPressed: () {
                      event.onboardComplete();
                      AutoRouter.of(context).replaceAll([const LayoutRoute()]);
                    },
                  ),
                ),
                MSize.vS(56),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    final event = ref.read(onboardingProvider.notifier);
    event.dispose();
    super.dispose();
  }
}
