// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BookDtoToJson(BookDto instance) => <String, dynamic>{
      'name': instance.name,
      'numberOfChapters': instance.numberOfChapters,
    };

_$_BookDto _$$_BookDtoFromJson(Map<String, dynamic> json) => _$_BookDto(
      name: (json['name'] as List<dynamic>).map((e) => e as String).toList(),
      numberOfChapters: json['numberOfChapters'] as int,
    );

Map<String, dynamic> _$$_BookDtoToJson(_$_BookDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numberOfChapters': instance.numberOfChapters,
    };
