// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_broadcast_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$JoinBroadcastDataDtoToJson(
    JoinBroadcastDataDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('agoraToken', instance.agoraToken);
  return val;
}

_$_JoinBroadcastDataDto _$$_JoinBroadcastDataDtoFromJson(
        Map<String, dynamic> json) =>
    _$_JoinBroadcastDataDto(
      agoraToken: json['agoraToken'] as String?,
    );

Map<String, dynamic> _$$_JoinBroadcastDataDtoToJson(
        _$_JoinBroadcastDataDto instance) =>
    <String, dynamic>{
      'agoraToken': instance.agoraToken,
    };
