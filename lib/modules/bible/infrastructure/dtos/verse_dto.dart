// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/verse.dart';

part 'verse_dto.freezed.dart';
part 'verse_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class VerseDto with _$VerseDto {
  factory VerseDto({
    @JsonKey(name: 'book_id') required String bookId,
    @JsonKey(name: 'book_name') required String bookName,
    required int chapter,
    required String text,
    required int verse,
    required String vid,
  }) = _VerseDto;

  factory VerseDto.fromDomain(Verse v) {
    return VerseDto(
      bookId: v.bookId,
      bookName: v.bookName,
      chapter: v.chapter,
      text: v.text,
      verse: v.verse,
      vid: v.vid,
    );
  }

  factory VerseDto.fromJson(Map<String, dynamic> json) =>
      _$VerseDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$VerseDtoToJson(this);
}
