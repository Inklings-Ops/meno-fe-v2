// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TranslationDtoToJson(TranslationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('translation', instance.translation);
  return val;
}

_$_TranslationDto _$$_TranslationDtoFromJson(Map<String, dynamic> json) =>
    _$_TranslationDto(
      translation: json['translation'] as String?,
    );

Map<String, dynamic> _$$_TranslationDtoToJson(_$_TranslationDto instance) =>
    <String, dynamic>{
      'translation': instance.translation,
    };
