// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i17;
import 'package:meno_fe_v2/di/register_module.dart' as _i43;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i19;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i14;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i15;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i4;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i29;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i30;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i5;
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart' as _i35;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/bible_facade.dart'
    as _i36;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart'
    as _i33;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/book_mapper.dart'
    as _i7;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart'
    as _i11;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/translation_mapper.dart'
    as _i28;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart'
    as _i31;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart'
    as _i6;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart'
    as _i42;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart'
    as _i41;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i37;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i38;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i34;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart'
    as _i8;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i9;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i12;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i18;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i10;
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart'
    as _i39;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart'
    as _i21;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart'
    as _i22;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart'
    as _i24;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart'
    as _i23;
import 'package:meno_fe_v2/modules/profile/infrastructure/profile_facade.dart'
    as _i40;
import 'package:meno_fe_v2/services/agora_service.dart' as _i3;
import 'package:meno_fe_v2/services/media_service.dart' as _i20;
import 'package:meno_fe_v2/services/secure_storage_Service.dart' as _i25;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i27;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

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
    gh.lazySingleton<_i6.BibleRemoteDatasource>(
        () => registerModule.bibleRemote);
    gh.lazySingleton<_i7.BookMapper>(() => _i7.BookMapper());
    gh.singleton<_i8.BroadcastListenerMapper>(_i8.BroadcastListenerMapper());
    gh.singleton<_i9.BroadcastMapper>(_i9.BroadcastMapper());
    gh.lazySingleton<_i10.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.lazySingleton<_i11.ChapterMapper>(() => _i11.ChapterMapper());
    gh.singleton<_i12.CreatorMapper>(_i12.CreatorMapper());
    gh.lazySingleton<_i13.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i14.IAuthFacade>(() => _i15.AuthFacade(
          gh<_i4.AuthLocalDatasource>(),
          gh<_i5.AuthRemoteDatasource>(),
        ));
    gh.lazySingleton<_i16.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i17.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i18.JoinBroadcastDataMapper>(
        () => _i18.JoinBroadcastDataMapper());
    gh.factory<_i19.LoginNotifier>(
        () => _i19.LoginNotifier(gh<_i14.IAuthFacade>()));
    gh.lazySingleton<_i20.MediaService>(
        () => _i20.MediaService(gh<_i16.ImagePicker>()));
    gh.factory<_i21.ProfileLocalDatasource>(
        () => _i21.ProfileLocalDatasource());
    gh.lazySingleton<_i22.ProfileMapper>(() => _i22.ProfileMapper());
    gh.lazySingleton<_i23.ProfileRemoteDatasource>(
        () => registerModule.profileRemote);
    gh.lazySingleton<_i24.ProfileStatsMapper>(() => _i24.ProfileStatsMapper());
    gh.factory<_i25.SecureStorageService>(() => _i25.SecureStorageService());
    await gh.factoryAsync<_i26.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i27.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.lazySingleton<_i28.TranslationMapper>(() => _i28.TranslationMapper());
    gh.singleton<_i29.UserCredentialsMapper>(_i29.UserCredentialsMapper());
    gh.singleton<_i30.UserMapper>(_i30.UserMapper());
    gh.lazySingleton<_i31.VerseMapper>(() => _i31.VerseMapper());
    gh.factory<_i33.BibleLocalDatasource>(
        () => _i33.BibleLocalDatasource(gh<_i27.SharedPreferencesService>()));
    gh.factory<_i34.BroadcastLocalDatasource>(() =>
        _i34.BroadcastLocalDatasource(gh<_i27.SharedPreferencesService>()));
    gh.factory<_i35.IBibleFacade>(() => _i36.BibleFacade(
          gh<_i33.BibleLocalDatasource>(),
          gh<_i6.BibleRemoteDatasource>(),
        ));
    gh.lazySingleton<_i37.IBroadcastFacade>(() => _i38.BroadcastFacade(
          gh<_i34.BroadcastLocalDatasource>(),
          gh<_i10.BroadcastRemoteDatasource>(),
          gh<_i9.BroadcastMapper>(),
        ));
    gh.factory<_i39.IProfileFacade>(() => _i40.ProfileFacade(
          gh<_i21.ProfileLocalDatasource>(),
          gh<_i23.ProfileRemoteDatasource>(),
        ));
    gh.factory<_i41.BroadcastFormNotifier>(() => _i41.BroadcastFormNotifier(
          gh<_i37.IBroadcastFacade>(),
          gh<_i20.MediaService>(),
        ));
    gh.factory<_i42.BroadcastNotifier>(
        () => _i42.BroadcastNotifier(gh<_i37.IBroadcastFacade>()));
    return this;
  }
}

class _$RegisterModule extends _i43.RegisterModule {}
