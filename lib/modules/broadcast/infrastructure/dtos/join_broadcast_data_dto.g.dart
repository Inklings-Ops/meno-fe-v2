// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_broadcast_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$JoinBroadcastDataDtoToJson(
        JoinBroadcastDataDto instance) =>
    <String, dynamic>{
      'broadcast': instance.broadcast.toJson(),
      'broadcastToken': instance.broadcastToken,
    };

_$_JoinBroadcastDataDto _$$_JoinBroadcastDataDtoFromJson(
        Map<String, dynamic> json) =>
    _$_JoinBroadcastDataDto(
      broadcast:
          BroadcastDto.fromJson(json['broadcast'] as Map<String, dynamic>),
      broadcastToken: json['broadcastToken'] as String,
    );

Map<String, dynamic> _$$_JoinBroadcastDataDtoToJson(
        _$_JoinBroadcastDataDto instance) =>
    <String, dynamic>{
      'broadcast': instance.broadcast,
      'broadcastToken': instance.broadcastToken,
    };
