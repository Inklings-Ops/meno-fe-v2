import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/di/injection.config.dart';

final di = GetIt.instance;

@injectableInit
void configureDependencies() async => await di.init();
