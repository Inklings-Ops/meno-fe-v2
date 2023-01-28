// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:image_picker/image_picker.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:meno_fe_v2/di/register_module.dart' as _i19;
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart'
    as _i18;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i17;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i15;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i16;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i14;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i12;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i13;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i3;
import 'package:meno_fe_v2/services/media_service.dart' as _i8;
import 'package:meno_fe_v2/services/secure_storage_Service.dart' as _i9;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

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
    gh.lazySingleton<_i3.AuthRemoteDatasource>(() => registerModule.authRemote);
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i6.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i7.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i8.MediaService>(
        () => _i8.MediaService(gh<_i6.ImagePicker>()));
    gh.factory<_i9.SecureStorageService>(() => _i9.SecureStorageService());
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i11.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.singleton<_i12.UserCredentialsMapper>(_i12.UserCredentialsMapper());
    gh.singleton<_i13.UserMapper>(_i13.UserMapper());
    gh.factory<_i14.AuthLocalDatasource>(
        () => _i14.AuthLocalDatasource(gh<_i9.SecureStorageService>()));
    gh.lazySingleton<_i15.IAuthFacade>(() => _i16.AuthFacade(
          gh<_i5.GoogleSignIn>(),
          gh<_i14.AuthLocalDatasource>(),
          gh<_i3.AuthRemoteDatasource>(),
          gh<_i12.UserCredentialsMapper>(),
        ));
    gh.factory<_i17.LoginNotifier>(
        () => _i17.LoginNotifier(gh<_i15.IAuthFacade>()));
    gh.factory<_i18.AuthNotifier>(
        () => _i18.AuthNotifier(gh<_i15.IAuthFacade>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
