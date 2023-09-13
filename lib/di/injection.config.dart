// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i17;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i18;
import 'package:meno_fe_v2/di/register_module.dart' as _i44;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i21;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i15;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i16;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i4;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i31;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i32;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i5;
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart' as _i36;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/bible_facade.dart'
    as _i37;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart'
    as _i34;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/book_mapper.dart'
    as _i8;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart'
    as _i12;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/translation_mapper.dart'
    as _i30;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart'
    as _i33;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart'
    as _i7;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart'
    as _i43;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart'
    as _i42;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i38;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i39;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i35;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart'
    as _i9;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i10;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i13;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i19;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i11;
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart'
    as _i40;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart'
    as _i23;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart'
    as _i24;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart'
    as _i26;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart'
    as _i25;
import 'package:meno_fe_v2/modules/profile/infrastructure/profile_facade.dart'
    as _i41;
import 'package:meno_fe_v2/services/agora_service.dart' as _i3;
import 'package:meno_fe_v2/services/background_service.dart' as _i6;
import 'package:meno_fe_v2/services/livekit_service.dart' as _i20;
import 'package:meno_fe_v2/services/media_service.dart' as _i22;
import 'package:meno_fe_v2/services/secure_storage_Service.dart' as _i27;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i29;
import 'package:shared_preferences/shared_preferences.dart' as _i28;

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
    gh.factory<_i4.AuthLocalDatasource>(() => _i4.AuthLocalDatasource());
    gh.lazySingleton<_i5.AuthRemoteDatasource>(() => registerModule.authRemote);
    gh.factory<_i6.BackgroundService>(() => _i6.BackgroundService());
    gh.lazySingleton<_i7.BibleRemoteDatasource>(
        () => registerModule.bibleRemote);
    gh.lazySingleton<_i8.BookMapper>(() => _i8.BookMapper());
    gh.singleton<_i9.BroadcastListenerMapper>(_i9.BroadcastListenerMapper());
    gh.singleton<_i10.BroadcastMapper>(_i10.BroadcastMapper());
    gh.lazySingleton<_i11.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.lazySingleton<_i12.ChapterMapper>(() => _i12.ChapterMapper());
    gh.singleton<_i13.CreatorMapper>(_i13.CreatorMapper());
    gh.lazySingleton<_i14.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i15.IAuthFacade>(() => _i16.AuthFacade(
          gh<_i4.AuthLocalDatasource>(),
          gh<_i5.AuthRemoteDatasource>(),
        ));
    gh.lazySingleton<_i17.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i18.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i19.JoinBroadcastDataMapper>(
        () => _i19.JoinBroadcastDataMapper());
    gh.lazySingleton<_i20.LivekitService>(() => registerModule.livekitService);
    gh.factory<_i21.LoginNotifier>(
        () => _i21.LoginNotifier(gh<_i15.IAuthFacade>()));
    gh.lazySingleton<_i22.MediaService>(
        () => _i22.MediaService(gh<_i17.ImagePicker>()));
    gh.factory<_i23.ProfileLocalDatasource>(
        () => _i23.ProfileLocalDatasource());
    gh.lazySingleton<_i24.ProfileMapper>(() => _i24.ProfileMapper());
    gh.lazySingleton<_i25.ProfileRemoteDatasource>(
        () => registerModule.profileRemote);
    gh.lazySingleton<_i26.ProfileStatsMapper>(() => _i26.ProfileStatsMapper());
    gh.factory<_i27.SecureStorageService>(() => _i27.SecureStorageService());
    await gh.factoryAsync<_i28.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i29.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.lazySingleton<_i30.TranslationMapper>(() => _i30.TranslationMapper());
    gh.singleton<_i31.UserCredentialsMapper>(_i31.UserCredentialsMapper());
    gh.singleton<_i32.UserMapper>(_i32.UserMapper());
    gh.lazySingleton<_i33.VerseMapper>(() => _i33.VerseMapper());
    gh.factory<_i34.BibleLocalDatasource>(
        () => _i34.BibleLocalDatasource(gh<_i29.SharedPreferencesService>()));
    gh.factory<_i35.BroadcastLocalDatasource>(() =>
        _i35.BroadcastLocalDatasource(gh<_i29.SharedPreferencesService>()));
    gh.factory<_i36.IBibleFacade>(() => _i37.BibleFacade(
          gh<_i34.BibleLocalDatasource>(),
          gh<_i7.BibleRemoteDatasource>(),
        ));
    gh.lazySingleton<_i38.IBroadcastFacade>(() => _i39.BroadcastFacade(
          gh<_i35.BroadcastLocalDatasource>(),
          gh<_i11.BroadcastRemoteDatasource>(),
          gh<_i10.BroadcastMapper>(),
        ));
    gh.factory<_i40.IProfileFacade>(() => _i41.ProfileFacade(
          gh<_i23.ProfileLocalDatasource>(),
          gh<_i25.ProfileRemoteDatasource>(),
        ));
    gh.factory<_i42.BroadcastFormNotifier>(() => _i42.BroadcastFormNotifier(
          gh<_i38.IBroadcastFacade>(),
          gh<_i22.MediaService>(),
        ));
    gh.factory<_i43.BroadcastNotifier>(
        () => _i43.BroadcastNotifier(gh<_i38.IBroadcastFacade>()));
    return this;
  }
}

class _$RegisterModule extends _i44.RegisterModule {}
