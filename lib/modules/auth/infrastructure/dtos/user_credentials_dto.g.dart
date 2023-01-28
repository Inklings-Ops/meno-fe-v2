// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UserCredentialsDtoToJson(UserCredentialsDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user?.toJson());
  writeNotNull('token', instance.token);
  return val;
}

_$_UserCredentialsDto _$$_UserCredentialsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserCredentialsDto(
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserCredentialsDtoToJson(
        _$_UserCredentialsDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
