// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UserDtoToJson(UserDto instance) {
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
  val['email'] = instance.email;
  writeNotNull('emailAccountType', instance.emailAccountType);
  writeNotNull('verified', instance.verified);
  writeNotNull('imageId', instance.imageId);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('deleted', instance.deleted?.toIso8601String());
  return val;
}

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      bio: json['bio'] as String?,
      email: json['email'] as String,
      emailAccountType: json['emailAccountType'] as String?,
      verified: json['verified'] as bool?,
      imageId: json['imageId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      deleted: json['deleted'] == null
          ? null
          : DateTime.parse(json['deleted'] as String),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'email': instance.email,
      'emailAccountType': instance.emailAccountType,
      'verified': instance.verified,
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'deleted': instance.deleted?.toIso8601String(),
    };
