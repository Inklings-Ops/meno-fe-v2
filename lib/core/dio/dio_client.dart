import 'package:dio/dio.dart';
import 'package:meno_fe_v2/core/dio/token_interceptor.dart';

Dio dioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  dio.interceptors.addAll([
    TokenInterceptor(),
    LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
    ),
  ]);

  return dio;
}
