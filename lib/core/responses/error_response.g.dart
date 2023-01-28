// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      message: json['message'] as String?,
      error: json['error'],
      path: json['path'] as String?,
      status: json['status'] as bool?,
      statusCode: json['statusCode'] as num?,
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('error', instance.error);
  writeNotNull('path', instance.path);
  writeNotNull('status', instance.status);
  writeNotNull('statusCode', instance.statusCode);
  return val;
}
