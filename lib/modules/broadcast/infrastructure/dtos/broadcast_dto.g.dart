// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BroadcastDtoToJson(BroadcastDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('status', instance.status);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('agoraToken', instance.agoraToken);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('imageId', instance.imageId);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('startTime', instance.startTime?.toIso8601String());
  writeNotNull('endTime', instance.endTime);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('deleted', instance.deleted);
  writeNotNull('creatorId', instance.creatorId);
  writeNotNull('creator', instance.creator?.toJson());
  writeNotNull('liveListeners', instance.liveListeners);
  writeNotNull('timeElapsed', instance.timeElapsed);
  writeNotNull('totalListeners', instance.totalListeners);
  return val;
}

_$_BroadcastDto _$$_BroadcastDtoFromJson(Map<String, dynamic> json) =>
    _$_BroadcastDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      status: json['status'] as String?,
      fullName: json['fullName'] as String?,
      agoraToken: json['agoraToken'] as String?,
      timezone: json['timezone'] as String?,
      imageId: json['imageId'],
      imageUrl: json['imageUrl'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      deleted: json['deleted'],
      creatorId: json['creatorId'] as String?,
      creator: json['creator'] == null
          ? null
          : CreatorDto.fromJson(json['creator'] as Map<String, dynamic>),
      liveListeners: json['liveListeners'] as int?,
      timeElapsed: json['timeElapsed'] as int?,
      totalListeners: json['totalListeners'] as int?,
    );

Map<String, dynamic> _$$_BroadcastDtoToJson(_$_BroadcastDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'fullName': instance.fullName,
      'agoraToken': instance.agoraToken,
      'timezone': instance.timezone,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'deleted': instance.deleted,
      'creatorId': instance.creatorId,
      'creator': instance.creator,
      'liveListeners': instance.liveListeners,
      'timeElapsed': instance.timeElapsed,
      'totalListeners': instance.totalListeners,
    };
