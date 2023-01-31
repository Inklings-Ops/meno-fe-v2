import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/splash_page_background_painter.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: MColors.splashScreenBg,
      body: SizedBox(
        height: MSize.sh(1),
        width: MSize.sw(1),
        child: CustomPaint(
          painter: SplashPageBackgroundPainter(),
          child: SplashScreen.callback(
            width: MSize.sw(0.8),
            name: 'assets/animations/meno_splash.riv',
            onSuccess: (data) async {
              ref.read(authProvider.notifier).checkAuthenticated();
              AutoRouter.of(context).replaceAll([const LayoutRoute()]);
            },
            onError: (err, stack) {},
            until: () async => await di.allReady(),
            startAnimation: 'intro',
          ),
        ),
      ),
    );
  }
}
