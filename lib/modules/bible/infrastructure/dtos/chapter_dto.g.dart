// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ChapterDtoToJson(ChapterDto instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'verses': instance.verses.map((e) => e?.toJson()).toList(),
    };

_$_ChapterDto _$$_ChapterDtoFromJson(Map<String, dynamic> json) =>
    _$_ChapterDto(
      reference: json['reference'] as String,
      verses: (json['verses'] as List<dynamic>)
          .map((e) =>
              e == null ? null : VerseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChapterDtoToJson(_$_ChapterDto instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'verses': instance.verses,
    };
