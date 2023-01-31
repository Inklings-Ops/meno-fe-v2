// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:image_picker/image_picker.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:meno_fe_v2/di/register_module.dart' as _i44;
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart'
    as _i39;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i37;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i30;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i31;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i27;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i24;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i25;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i4;
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart' as _i32;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/bible_facade.dart'
    as _i33;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart'
    as _i28;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/book_mapper.dart'
    as _i5;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart'
    as _i9;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/translation_mapper.dart'
    as _i23;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart'
    as _i26;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart'
    as _i34;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart'
    as _i41;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart'
    as _i40;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i35;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i36;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i29;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart'
    as _i6;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i7;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i10;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i15;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i8;
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart'
    as _i42;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart'
    as _i38;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart'
    as _i17;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart'
    as _i19;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart'
    as _i18;
import 'package:meno_fe_v2/modules/profile/infrastructure/profile_facade.dart'
    as _i43;
import 'package:meno_fe_v2/services/agora_service.dart' as _i3;
import 'package:meno_fe_v2/services/media_service.dart' as _i16;
import 'package:meno_fe_v2/services/secure_storage_service.dart' as _i20;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i22;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

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
    gh.lazySingleton<_i3.AgoraService>(() => registerModule.agoraService);
    gh.lazySingleton<_i4.AuthRemoteDatasource>(() => registerModule.authRemote);
    gh.lazySingleton<_i5.BookMapper>(() => _i5.BookMapper());
    gh.singleton<_i6.BroadcastListenerMapper>(_i6.BroadcastListenerMapper());
    gh.singleton<_i7.BroadcastMapper>(_i7.BroadcastMapper());
    gh.lazySingleton<_i8.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.lazySingleton<_i9.ChapterMapper>(() => _i9.ChapterMapper());
    gh.singleton<_i10.CreatorMapper>(_i10.CreatorMapper());
    gh.lazySingleton<_i11.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i12.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i13.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i14.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i15.JoinBroadcastDataMapper>(
        () => _i15.JoinBroadcastDataMapper());
    gh.lazySingleton<_i16.MediaService>(
        () => _i16.MediaService(gh<_i13.ImagePicker>()));
    gh.lazySingleton<_i17.ProfileMapper>(() => _i17.ProfileMapper());
    gh.lazySingleton<_i18.ProfileRemoteDatasource>(
        () => registerModule.profileRemote);
    gh.lazySingleton<_i19.ProfileStatsMapper>(() => _i19.ProfileStatsMapper());
    gh.lazySingleton<_i20.SecureStorageService>(
        () => registerModule.secureStorage);
    await gh.factoryAsync<_i21.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i22.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.lazySingleton<_i23.TranslationMapper>(() => _i23.TranslationMapper());
    gh.singleton<_i24.UserCredentialsMapper>(_i24.UserCredentialsMapper());
    gh.singleton<_i25.UserMapper>(_i25.UserMapper());
    gh.lazySingleton<_i26.VerseMapper>(() => _i26.VerseMapper());
    gh.factory<_i27.AuthLocalDatasource>(
        () => _i27.AuthLocalDatasource(gh<_i20.SecureStorageService>()));
    gh.factory<_i28.BibleLocalDatasource>(
        () => _i28.BibleLocalDatasource(gh<_i22.SharedPreferencesService>()));
    gh.factory<_i29.BroadcastLocalDatasource>(
        () => _i29.BroadcastLocalDatasource(
              gh<_i20.SecureStorageService>(),
              gh<_i22.SharedPreferencesService>(),
            ));
    gh.lazySingleton<_i30.IAuthFacade>(() => _i31.AuthFacade(
          gh<_i12.GoogleSignIn>(),
          gh<_i27.AuthLocalDatasource>(),
          gh<_i4.AuthRemoteDatasource>(),
          gh<_i24.UserCredentialsMapper>(),
        ));
    gh.factory<_i32.IBibleFacade>(() => _i33.BibleFacade(
          gh<_i28.BibleLocalDatasource>(),
          gh<_i34.BibleRemoteDatasource>(),
        ));
    gh.lazySingleton<_i35.IBroadcastFacade>(() => _i36.BroadcastFacade(
          gh<_i29.BroadcastLocalDatasource>(),
          gh<_i8.BroadcastRemoteDatasource>(),
          gh<_i7.BroadcastMapper>(),
        ));
    gh.factory<_i37.LoginNotifier>(
        () => _i37.LoginNotifier(gh<_i30.IAuthFacade>()));
    gh.factory<_i38.ProfileLocalDatasource>(
        () => _i38.ProfileLocalDatasource(gh<_i20.SecureStorageService>()));
    gh.factory<_i39.AuthNotifier>(
        () => _i39.AuthNotifier(gh<_i30.IAuthFacade>()));
    gh.factory<_i40.BroadcastFormNotifier>(() => _i40.BroadcastFormNotifier(
          gh<_i35.IBroadcastFacade>(),
          gh<_i16.MediaService>(),
        ));
    gh.factory<_i41.BroadcastNotifier>(
        () => _i41.BroadcastNotifier(gh<_i35.IBroadcastFacade>()));
    gh.factory<_i42.IProfileFacade>(() => _i43.ProfileFacade(
          gh<_i38.ProfileLocalDatasource>(),
          gh<_i18.ProfileRemoteDatasource>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i44.RegisterModule {}
