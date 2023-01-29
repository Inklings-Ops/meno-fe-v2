// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileError _$ProfileErrorFromJson(Map<String, dynamic> json) => ProfileError(
      fullName: json['fullName'] as String?,
      bio: json['bio'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProfileErrorToJson(ProfileError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fullName', instance.fullName);
  writeNotNull('bio', instance.bio);
  writeNotNull('image', instance.image);
  return val;
}
