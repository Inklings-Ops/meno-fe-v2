import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meno_fe_v2/core/dio/dio_client.dart';
import 'package:meno_fe_v2/core/env/env.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart';
import 'package:meno_fe_v2/services/agora_service.dart';
import 'package:meno_fe_v2/services/secure_storage_service.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker.createInstance();

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  @lazySingleton
  SecureStorageService get secureStorage => SecureStorageService();

  @preResolve
  Future<SharedPreferencesService> get sharedPrefService =>
      SharedPreferencesService.getInstance();

  final _dio = dioClient(Env.menoApi);
  @lazySingleton
  AuthRemoteDatasource get authRemote =>
      AuthRemoteDatasource(_dio, baseUrl: Env.menoApi);

  @lazySingleton
  BroadcastRemoteDatasource get broadcastRemote =>
      BroadcastRemoteDatasource(_dio, baseUrl: Env.menoApi);

  @lazySingleton
  ProfileRemoteDatasource get profileRemote =>
      ProfileRemoteDatasource(_dio, baseUrl: Env.menoApi);

  @lazySingleton
  BibleRemoteDatasource get bibleRemote =>
      BibleRemoteDatasource(_dio, baseUrl: Env.bibleApi);

  @lazySingleton
  AgoraService get agoraService => AgoraService();
}
