import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/verse.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/verse_dto.dart';

@lazySingleton
class VerseMapper {
  Verse? toDomain(VerseDto? dto) {
    if (dto == null) return null;

    return Verse(
      bookId: dto.bookId,
      bookName: dto.bookName,
      chapter: dto.chapter,
      text: dto.text,
      verse: dto.verse,
    );
  }
}
