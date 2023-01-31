import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/chapter.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/verse_mapper.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/chapter_dto.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/verse_dto.dart';

@lazySingleton
class ChapterMapper {
  Chapter? toDomain(ChapterDto? dto) {
    if (dto == null) return null;

    List<VerseDto> verses = List.from(dto.verses);
    verses.sort((a, b) => a.verse.compareTo(b.verse));

    return Chapter(
      reference: dto.reference,
      verses: verses.map((e) => VerseMapper().toDomain(e)!).toList(),
    );
  }
}
