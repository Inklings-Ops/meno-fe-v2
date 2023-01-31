import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/chapter.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/verse.dart';

abstract class IBibleFacade {
  Future<List<Book>> getBooks();

  Future<Chapter> getChapter(String reference, String version);

  Future<int> getChapterNumber(String book);

  Future<List<String>?> getTranslations();

  Future<Verse?> getVerse(String reference, String version);

  Future<List<Verse?>> getVerses(String reference, String version);
}
