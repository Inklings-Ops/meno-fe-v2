// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BookDtoToJson(BookDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('book', instance.book);
  return val;
}

_$_BookDto _$$_BookDtoFromJson(Map<String, dynamic> json) => _$_BookDto(
      book: (json['book'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_BookDtoToJson(_$_BookDto instance) =>
    <String, dynamic>{
      'book': instance.book,
    };