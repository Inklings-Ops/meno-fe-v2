// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ProfileDtoToJson(ProfileDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'fullName': instance.fullName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bio', instance.bio);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('_count', instance.count?.toJson());
  writeNotNull('isSubscribedToUser', instance.isSubscribedToUser);
  val['role'] = _$RoleEnumMap[instance.role]!;
  return val;
}

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.guest: 'guest',
};

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      bio: json['bio'] as String?,
      imageUrl: json['imageUrl'] as String?,
      count: json['_count'] == null
          ? null
          : ProfileStatsDto.fromJson(json['_count'] as Map<String, dynamic>),
      isSubscribedToUser: json['isSubscribedToUser'] as bool?,
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'imageUrl': instance.imageUrl,
      '_count': instance.count,
      'isSubscribedToUser': instance.isSubscribedToUser,
      'role': _$RoleEnumMap[instance.role]!,
    };
