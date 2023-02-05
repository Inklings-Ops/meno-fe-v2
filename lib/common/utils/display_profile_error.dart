import 'package:dio/dio.dart';
import 'package:meno_fe_v2/core/errors/profile_error.dart';
import 'package:meno_fe_v2/core/responses/error_response.dart';
// import 'package:logger/logger.dart';

String? displayProfileError(DioError err) {
  String? result;
  final response = ErrorResponse.fromJson(err.response!.data);

  if (response.error.runtimeType == String) {
    return response.message;
  }

  final error = ProfileError.fromJson(err.response!.data['error']);
  if (error.props.isNotEmpty) {
    for (var i = 0; i < error.props.length; i++) {
      result = error.props[i].toString();
    }
  }
  return result;
}
