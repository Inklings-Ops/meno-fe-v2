// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:image_picker/image_picker.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i15;
import 'package:meno_fe_v2/di/register_module.dart' as _i44;
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart'
    as _i39;
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart'
    as _i37;
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart' as _i31;
import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart'
    as _i32;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart'
    as _i28;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart'
    as _i25;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart'
    as _i26;
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart'
    as _i4;
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart' as _i33;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/bible_facade.dart'
    as _i34;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart'
    as _i29;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/book_mapper.dart'
    as _i6;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart'
    as _i10;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/translation_mapper.dart'
    as _i24;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart'
    as _i27;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart'
    as _i5;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart'
    as _i41;
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart'
    as _i40;
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart'
    as _i35;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/broadcast_facade.dart'
    as _i36;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart'
    as _i30;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart'
    as _i7;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart'
    as _i8;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart'
    as _i11;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/join_broadcast_data_mapper.dart'
    as _i16;
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart'
    as _i9;
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart'
    as _i42;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart'
    as _i38;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart'
    as _i18;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart'
    as _i20;
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart'
    as _i19;
import 'package:meno_fe_v2/modules/profile/infrastructure/profile_facade.dart'
    as _i43;
import 'package:meno_fe_v2/services/agora_service.dart' as _i3;
import 'package:meno_fe_v2/services/media_service.dart' as _i17;
import 'package:meno_fe_v2/services/secure_storage_service.dart' as _i21;
import 'package:meno_fe_v2/services/shared_preferences_service.dart' as _i23;
import 'package:shared_preferences/shared_preferences.dart' as _i22;

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
    gh.lazySingleton<_i5.BibleRemoteDatasource>(
        () => registerModule.bibleRemote);
    gh.lazySingleton<_i6.BookMapper>(() => _i6.BookMapper());
    gh.singleton<_i7.BroadcastListenerMapper>(_i7.BroadcastListenerMapper());
    gh.singleton<_i8.BroadcastMapper>(_i8.BroadcastMapper());
    gh.lazySingleton<_i9.BroadcastRemoteDatasource>(
        () => registerModule.broadcastRemote);
    gh.lazySingleton<_i10.ChapterMapper>(() => _i10.ChapterMapper());
    gh.singleton<_i11.CreatorMapper>(_i11.CreatorMapper());
    gh.lazySingleton<_i12.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i13.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i14.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i15.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i16.JoinBroadcastDataMapper>(
        () => _i16.JoinBroadcastDataMapper());
    gh.lazySingleton<_i17.MediaService>(
        () => _i17.MediaService(gh<_i14.ImagePicker>()));
    gh.lazySingleton<_i18.ProfileMapper>(() => _i18.ProfileMapper());
    gh.lazySingleton<_i19.ProfileRemoteDatasource>(
        () => registerModule.profileRemote);
    gh.lazySingleton<_i20.ProfileStatsMapper>(() => _i20.ProfileStatsMapper());
    gh.lazySingleton<_i21.SecureStorageService>(
        () => registerModule.secureStorage);
    await gh.factoryAsync<_i22.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i23.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.lazySingleton<_i24.TranslationMapper>(() => _i24.TranslationMapper());
    gh.singleton<_i25.UserCredentialsMapper>(_i25.UserCredentialsMapper());
    gh.singleton<_i26.UserMapper>(_i26.UserMapper());
    gh.lazySingleton<_i27.VerseMapper>(() => _i27.VerseMapper());
    gh.factory<_i28.AuthLocalDatasource>(
        () => _i28.AuthLocalDatasource(gh<_i21.SecureStorageService>()));
    gh.factory<_i29.BibleLocalDatasource>(
        () => _i29.BibleLocalDatasource(gh<_i23.SharedPreferencesService>()));
    gh.factory<_i30.BroadcastLocalDatasource>(
        () => _i30.BroadcastLocalDatasource(
              gh<_i21.SecureStorageService>(),
              gh<_i23.SharedPreferencesService>(),
            ));
    gh.lazySingleton<_i31.IAuthFacade>(() => _i32.AuthFacade(
          gh<_i13.GoogleSignIn>(),
          gh<_i28.AuthLocalDatasource>(),
          gh<_i4.AuthRemoteDatasource>(),
          gh<_i25.UserCredentialsMapper>(),
        ));
    gh.factory<_i33.IBibleFacade>(() => _i34.BibleFacade(
          gh<_i29.BibleLocalDatasource>(),
          gh<_i5.BibleRemoteDatasource>(),
        ));
    gh.lazySingleton<_i35.IBroadcastFacade>(() => _i36.BroadcastFacade(
          gh<_i30.BroadcastLocalDatasource>(),
          gh<_i9.BroadcastRemoteDatasource>(),
          gh<_i8.BroadcastMapper>(),
        ));
    gh.factory<_i37.LoginNotifier>(
        () => _i37.LoginNotifier(gh<_i31.IAuthFacade>()));
    gh.factory<_i38.ProfileLocalDatasource>(
        () => _i38.ProfileLocalDatasource(gh<_i21.SecureStorageService>()));
    gh.factory<_i39.AuthNotifier>(
        () => _i39.AuthNotifier(gh<_i31.IAuthFacade>()));
    gh.factory<_i40.BroadcastFormNotifier>(() => _i40.BroadcastFormNotifier(
          gh<_i35.IBroadcastFacade>(),
          gh<_i17.MediaService>(),
        ));
    gh.factory<_i41.BroadcastNotifier>(
        () => _i41.BroadcastNotifier(gh<_i35.IBroadcastFacade>()));
    gh.factory<_i42.IProfileFacade>(() => _i43.ProfileFacade(
          gh<_i38.ProfileLocalDatasource>(),
          gh<_i19.ProfileRemoteDatasource>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i44.RegisterModule {}
