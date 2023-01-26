import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
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

  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  @preResolve
  Future<SharedPreferencesService> get sharedPrefService =>
      SharedPreferencesService.getInstance();
}
