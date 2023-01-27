// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeError _$SubscribeErrorFromJson(Map<String, dynamic> json) =>
    SubscribeError(
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$SubscribeErrorToJson(SubscribeError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  return val;
}
