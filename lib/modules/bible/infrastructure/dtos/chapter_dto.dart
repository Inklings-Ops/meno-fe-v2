import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/verse_dto.dart';

part 'chapter_dto.freezed.dart';
part 'chapter_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class ChapterDto with _$ChapterDto {
  factory ChapterDto({
    required String reference,
    required List<VerseDto?> verses,
  }) = _ChapterDto;

  factory ChapterDto.fromJson(Map<String, dynamic> json) =>
      _$ChapterDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$ChapterDtoToJson(this);
}
