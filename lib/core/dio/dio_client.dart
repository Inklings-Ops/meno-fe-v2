import 'package:dio/dio.dart';
import 'package:meno_fe_v2/core/dio/token_interceptor.dart';

Dio dioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  dio.interceptors.addAll([TokenInterceptor()]);

  return dio;
}
