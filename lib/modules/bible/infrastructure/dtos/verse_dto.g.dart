// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$VerseDtoToJson(VerseDto instance) {
  final val = <String, dynamic>{
    'book_id': instance.bookId,
    'book_name': instance.bookName,
    'chapter': instance.chapter,
    'text': instance.text,
    'verse': instance.verse,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vid', instance.vid);
  return val;
}

_$_VerseDto _$$_VerseDtoFromJson(Map<String, dynamic> json) => _$_VerseDto(
      bookId: json['book_id'] as String,
      bookName: json['book_name'] as String,
      chapter: json['chapter'] as int,
      text: json['text'] as String,
      verse: json['verse'] as int,
      vid: json['vid'] as String?,
    );

Map<String, dynamic> _$$_VerseDtoToJson(_$_VerseDto instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'chapter': instance.chapter,
      'text': instance.text,
      'verse': instance.verse,
      'vid': instance.vid,
    };
