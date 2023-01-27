import 'package:flutter/material.dart' hide Router;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/core/router/onboarding_guard.dart';
import 'package:meno_fe_v2/core/theme/m_theme.dart';

class MenoApp extends ConsumerStatefulWidget {
  const MenoApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MenoAppState();
}

class _MenoAppState extends ConsumerState<MenoApp> {
  final router = MRouter(onboardingGuard: OnboardingGuard());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Meno',
          theme: MTheme.light,
          color: MColors.primary,
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (context) => 'Meno',
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
          builder: (context, widget) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          ),
        );
      },
    );
  }
}
