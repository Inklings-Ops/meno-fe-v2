// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BibleResponse<T> _$BibleResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BibleResponse<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$BibleResponseToJson<T>(
  BibleResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$nullableGenericToJson(instance.data, toJsonT));
  writeNotNull('message', instance.message);
  writeNotNull('success', instance.success);
  return val;
}

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
