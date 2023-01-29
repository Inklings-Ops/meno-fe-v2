// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CreatorDtoToJson(CreatorDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('imageUrl', instance.imageUrl);
  return val;
}

_$_CreatorDto _$$_CreatorDtoFromJson(Map<String, dynamic> json) =>
    _$_CreatorDto(
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_CreatorDtoToJson(_$_CreatorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'imageUrl': instance.imageUrl,
    };
