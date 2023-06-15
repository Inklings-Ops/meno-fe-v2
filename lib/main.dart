import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/app/meno_app.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/firebase_options.dart';
import 'package:permission_handler/permission_handler.dart';

import 'common/constants/m_strings.dart';

Future<void> initService() async {
  final service = FlutterBackgroundService();
  await service.configure(
    iosConfiguration: IosConfiguration(
      autoStart: false,
      onForeground: onStart,
      onBackground: onIOSBackground,
    ),
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      isForegroundMode: true,
      autoStart: false,
    ),
  );
}

@pragma('vm-entry-point')
Future<void> onStart(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  if (service is AndroidServiceInstance) {
    service.on(broadcastTask).listen((event) async {
      service.setAsForegroundService();
      service.setAsBackgroundService();
      Logger().wtf(event);
    });
    service.on(streamTask).listen((event) async {
      service.setAsForegroundService();
      service.setAsBackgroundService();
      Logger().wtf(event);
    });
    service.on(endTask).listen((event) {
      service.stopSelf();
    });
  }
  Timer.periodic(const Duration(seconds: 1), (timer) async {
    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        service.setForegroundNotificationInfo(
          title: 'Meno',
          content: 'Running in background',
        );
      }
    }
    service.invoke('update');
  });
}

@pragma('vm-entry-point')
Future<bool> onIOSBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  return true;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ScreenUtil.ensureScreenSize();
  configureDependencies();

  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  await Permission.microphone.isDenied.then((value) {
    if (value) {
      Permission.microphone.request();
    }
  });

  await initService();

  runApp(ProviderScope(child: MenoApp()));
}
