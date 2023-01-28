import 'package:dio/dio.dart';
import 'package:meno_fe_v2/core/errors/auth_error.dart';
import 'package:meno_fe_v2/core/responses/error_response.dart';
// import 'package:logger/logger.dart';

String? displayAuthError(DioError err) {
  String? result;
  final response = ErrorResponse.fromJson(err.response!.data);

  if (response.error.runtimeType == String) {
    return response.message;
  }

  final error = AuthError.fromJson(err.response!.data['error']);
  for (var i = 0; i < error.props.length; i++) {
    if (error.props[i] != null) {
      result = error.props[i].toString();
    }
  }
  return result;
}
