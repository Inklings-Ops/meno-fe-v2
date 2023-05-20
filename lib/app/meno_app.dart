import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/core/router/onboarding_guard.dart';
import 'package:meno_fe_v2/core/theme/m_theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MenoApp extends StatelessWidget {
  MenoApp({Key? key}) : super(key: key);

  final _router = MRouter(onboardingGuard: OnboardingGuard());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return RefreshConfiguration(
          footerTriggerDistance: 15,
          dragSpeedRatio: 0.91,
          headerBuilder: () => const MaterialClassicHeader(),
          footerBuilder: () => const ClassicFooter(),
          enableLoadingWhenNoData: false,
          enableRefreshVibrate: false,
          enableLoadMoreVibrate: false,
          shouldFooterFollowWhenNotFull: (state) => false,
          child: MaterialApp.router(
            title: 'Meno',
            theme: MTheme.light,
            color: MColors.primary,
            debugShowCheckedModeBanner: false,
            onGenerateTitle: (context) => 'Meno',
            routerDelegate: _router.delegate(),
            routeInformationParser: _router.defaultRouteParser(),
            // builder: (context, widget) => MediaQuery(
            //   data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            //   child: widget!,
            // ),
          ),
        );
      },
    );
  }
}
