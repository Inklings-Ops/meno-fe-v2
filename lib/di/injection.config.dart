// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:image_picker/image_picker.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:meno_fe_v2/di/register_module.dart' as _i26;
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart'
    as _i25;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i24;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i20;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i21;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i18;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i16;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i17;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i3;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i22;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i23;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i19;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i4;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i6;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i11;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i5;
import 'package:meno_fe_v2/services/media_service.dart' as _i12;
import 'package:meno_fe_v2/services/secure_storage_Service.dart' as _i13;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i15;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

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
    gh.singleton<_i4.BroadcastMapper>(_i4.BroadcastMapper());
    gh.lazySingleton<_i5.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.singleton<_i6.CreatorMapper>(_i6.CreatorMapper());
    gh.lazySingleton<_i7.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i8.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i9.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i10.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i11.JoinBroadcastDataMapper>(
        () => _i11.JoinBroadcastDataMapper());
    gh.lazySingleton<_i12.MediaService>(
        () => _i12.MediaService(gh<_i9.ImagePicker>()));
    gh.factory<_i13.SecureStorageService>(() => _i13.SecureStorageService());
    await gh.factoryAsync<_i14.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i15.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.singleton<_i16.UserCredentialsMapper>(_i16.UserCredentialsMapper());
    gh.singleton<_i17.UserMapper>(_i17.UserMapper());
    gh.factory<_i18.AuthLocalDatasource>(
        () => _i18.AuthLocalDatasource(gh<_i13.SecureStorageService>()));
    gh.factory<_i19.BroadcastLocalDatasource>(
        () => _i19.BroadcastLocalDatasource(
              gh<dynamic>(),
              gh<_i15.SharedPreferencesService>(),
            ));
    gh.lazySingleton<_i20.IAuthFacade>(() => _i21.AuthFacade(
          gh<_i8.GoogleSignIn>(),
          gh<_i18.AuthLocalDatasource>(),
          gh<_i3.AuthRemoteDatasource>(),
          gh<_i16.UserCredentialsMapper>(),
        ));
    gh.lazySingleton<_i22.IBroadcastFacade>(() => _i23.BroadcastFacade(
          gh<_i19.BroadcastLocalDatasource>(),
          gh<_i5.BroadcastRemoteDatasource>(),
          gh<_i4.BroadcastMapper>(),
          gh<dynamic>(),
        ));
    gh.factory<_i24.LoginNotifier>(
        () => _i24.LoginNotifier(gh<_i20.IAuthFacade>()));
    gh.factory<_i25.AuthNotifier>(
        () => _i25.AuthNotifier(gh<_i20.IAuthFacade>()));
    return this;
  }
}

class _$RegisterModule extends _i26.RegisterModule {}
