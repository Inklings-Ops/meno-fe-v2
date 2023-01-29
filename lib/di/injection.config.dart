// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;
import 'package:meno_fe_v2/di/register_module.dart' as _i33;
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart'
    as _i30;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i28;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i24;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i25;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i22;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i20;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i21;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i3;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i26;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i27;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i23;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart'
    as _i4;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i5;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i7;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i12;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i6;
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart'
    as _i31;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart'
    as _i29;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart'
    as _i14;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart'
    as _i16;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart'
    as _i15;
import 'package:meno_fe_v2/modules/profile/infrastructure/profile_facade.dart'
    as _i32;
import 'package:meno_fe_v2/services/media_service.dart' as _i13;
import 'package:meno_fe_v2/services/secure_storage_service.dart' as _i17;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

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
    gh.singleton<_i4.BroadcastListenerMapper>(_i4.BroadcastListenerMapper());
    gh.singleton<_i5.BroadcastMapper>(_i5.BroadcastMapper());
    gh.lazySingleton<_i6.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.singleton<_i7.CreatorMapper>(_i7.CreatorMapper());
    gh.lazySingleton<_i8.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i9.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i10.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i11.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i12.JoinBroadcastDataMapper>(
        () => _i12.JoinBroadcastDataMapper());
    gh.lazySingleton<_i13.MediaService>(
        () => _i13.MediaService(gh<_i10.ImagePicker>()));
    gh.lazySingleton<_i14.ProfileMapper>(() => _i14.ProfileMapper());
    gh.lazySingleton<_i15.ProfileRemoteDatasource>(
        () => registerModule.profileRemote);
    gh.lazySingleton<_i16.ProfileStatsMapper>(() => _i16.ProfileStatsMapper());
    gh.lazySingleton<_i17.SecureStorageService>(
        () => registerModule.secureStorage);
    await gh.factoryAsync<_i18.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i19.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.singleton<_i20.UserCredentialsMapper>(_i20.UserCredentialsMapper());
    gh.singleton<_i21.UserMapper>(_i21.UserMapper());
    gh.factory<_i22.AuthLocalDatasource>(
        () => _i22.AuthLocalDatasource(gh<_i17.SecureStorageService>()));
    gh.factory<_i23.BroadcastLocalDatasource>(
        () => _i23.BroadcastLocalDatasource(
              gh<_i17.SecureStorageService>(),
              gh<_i19.SharedPreferencesService>(),
            ));
    gh.lazySingleton<_i24.IAuthFacade>(() => _i25.AuthFacade(
          gh<_i9.GoogleSignIn>(),
          gh<_i22.AuthLocalDatasource>(),
          gh<_i3.AuthRemoteDatasource>(),
          gh<_i20.UserCredentialsMapper>(),
        ));
    gh.lazySingleton<_i26.IBroadcastFacade>(() => _i27.BroadcastFacade(
          gh<_i23.BroadcastLocalDatasource>(),
          gh<_i6.BroadcastRemoteDatasource>(),
          gh<_i5.BroadcastMapper>(),
        ));
    gh.factory<_i28.LoginNotifier>(
        () => _i28.LoginNotifier(gh<_i24.IAuthFacade>()));
    gh.factory<_i29.ProfileLocalDatasource>(
        () => _i29.ProfileLocalDatasource(gh<_i17.SecureStorageService>()));
    gh.factory<_i30.AuthNotifier>(
        () => _i30.AuthNotifier(gh<_i24.IAuthFacade>()));
    gh.factory<_i31.IProfileFacade>(() => _i32.ProfileFacade(
          gh<_i29.ProfileLocalDatasource>(),
          gh<_i15.ProfileRemoteDatasource>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i33.RegisterModule {}
