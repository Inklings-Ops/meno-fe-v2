// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:meno_fe_v2/di/register_module.dart' as _i10;
import 'package:meno_fe_v2/services/media_service.dart' as _i6;
import 'package:meno_fe_v2/services/secure_storage_Service.dart' as _i7;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i5.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i6.MediaService>(
        () => _i6.MediaService(gh<_i4.ImagePicker>()));
    gh.factory<_i7.SecureStorageService>(() => _i7.SecureStorageService());
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i9.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
