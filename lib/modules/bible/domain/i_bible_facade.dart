import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/chapter.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/verse.dart';

abstract class IBibleFacade {
  Future<Chapter> getChapter(String reference, String translation);

  Future<int> getChapterNumber(String book);

  Future<List<Book>> getNewTestamentBooks();

  Future<List<Book>> getOldTestamentBooks();

  Future<List<String>?> getTranslations();

  Future<Verse?> getVerse(String reference, String translation);

  Future<List<Verse?>> getVerses(String reference, String translation);

  List<String> get books;

  List<int> chapters(int book);
}
