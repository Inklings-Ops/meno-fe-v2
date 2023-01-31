import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/chapter.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/verse.dart';
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/bible_local_datasource.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/mapper/chapter_mapper.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/remote/bible_remote_datasource.dart';

@Injectable(as: IBibleFacade)
class BibleFacade implements IBibleFacade {
  BibleFacade(this._local, this._remote);

  final BibleLocalDatasource _local;
  final BibleRemoteDatasource _remote;

  final _chapterMapper = ChapterMapper();

  @override
  Future<List<Book>> getBooks() async {
    return _local.getBooks();
  }

  @override
  Future<Chapter> getChapter(String reference, String version) async {
    try {
      final res = await _remote.getChapter(version: version, q: reference);
      return _chapterMapper.toDomain(res.data)!;
    } on DioError {
      return Chapter.empty();
    }
  }

  @override
  Future<int> getChapterNumber(String book) async {
    return getChapterNumber(book);
  }

  @override
  Future<List<String>?> getTranslations() async {
    final res = await _remote.getTranslations();
    await _local.storeAllTranslations(res.data);
    if (res.data == null) {
      return null;
    }
    return res.data;
  }

  @override
  Future<Verse?> getVerse(String reference, String version) async {
    final res = await _remote.getVerses(version: version, q: reference);
    final chapter = _chapterMapper.toDomain(res.data)!;
    if (chapter.verses.isEmpty) {
      return null;
    }
    return chapter.verses[0];
  }

  @override
  Future<List<Verse?>> getVerses(String reference, String version) async {
    final res = await _remote.getVerses(version: version, q: reference);
    final chapter = _chapterMapper.toDomain(res.data)!;
    return chapter.verses;
  }
}
