// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/services/secure_storage_service.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    Logger().w(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await SecureStorageService().read(key: MKeys.authToken);
    Logger().i('THIS IS TOKEN FROM INTERCEPTOR ==> $token');

    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    Logger().i(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    return super.onResponse(response, handler);
  }
}
