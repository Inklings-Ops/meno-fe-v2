// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_listener_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BroadcastListenerDtoToJson(
    BroadcastListenerDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'fullName': instance.fullName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  return val;
}

_$_BroadcastListenerDto _$$_BroadcastListenerDtoFromJson(
        Map<String, dynamic> json) =>
    _$_BroadcastListenerDto(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_BroadcastListenerDtoToJson(
        _$_BroadcastListenerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'imageUrl': instance.imageUrl,
    };
