// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:meno_fe_v2/di/register_module.dart' as _i17;
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart' as _i15;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/bible_facade.dart'
    as _i16;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart'
    as _i14;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/book_mapper.dart'
    as _i4;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart'
    as _i5;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/translation_mapper.dart'
    as _i12;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart'
    as _i13;
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart'
    as _i3;
import 'package:meno_fe_v2/services/media_service.dart' as _i9;
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
    gh.lazySingleton<_i3.BibleRemoteDatasource>(
        () => registerModule.bibleRemote);
    gh.lazySingleton<_i4.BookMapper>(() => _i4.BookMapper());
    gh.lazySingleton<_i5.ChapterMapper>(() => _i5.ChapterMapper());
    gh.lazySingleton<_i6.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i7.ImagePicker>(() => registerModule.imagePicker);
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i9.MediaService>(
        () => _i9.MediaService(gh<_i7.ImagePicker>()));
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => registerModule.pref,
      preResolve: true,
    );
    await gh.factoryAsync<_i11.SharedPreferencesService>(
      () => registerModule.sharedPrefService,
      preResolve: true,
    );
    gh.lazySingleton<_i12.TranslationMapper>(() => _i12.TranslationMapper());
    gh.lazySingleton<_i13.VerseMapper>(() => _i13.VerseMapper());
    gh.factory<_i14.BibleLocalDatasource>(
        () => _i14.BibleLocalDatasource(gh<_i11.SharedPreferencesService>()));
    gh.factory<_i15.IBibleFacade>(() => _i16.BibleFacade(
          gh<_i14.BibleLocalDatasource>(),
          gh<_i3.BibleRemoteDatasource>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
