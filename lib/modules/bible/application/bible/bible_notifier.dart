import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/chapter.dart';
import 'package:meno_fe_v2/modules/bible/domain/i_bible_facade.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/books_list.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/get_chapter_number.dart';

part 'bible_notifier.freezed.dart';
part 'bible_state.dart';

final bibleProvider = StateNotifierProvider<BibleNotifier, BibleState>((ref) {
  return BibleNotifier(di<IBibleFacade>());
});

class BibleNotifier extends StateNotifier<BibleState> {
  BibleNotifier(this._facade) : super(BibleState.initial());
  final IBibleFacade _facade;

  /// Select a book; e.g. Genesis
  void updateBook(Book book) {
    state = state.copyWith(
      book: book,
      numberOfChapters: getChapterNumber(book.name!.last),
    );
  }

  /// Shows the number of chapters
  /// Example, for Genesis, it returns 50 numbers
  /// representing the 50 chapters of the book of Genesis
  Future<void> updateNumberOfChapters(String book) async {
    final number = await _facade.getChapterNumber(book);
    state = state.copyWith(numberOfChapters: number);
  }

  /// Select the chapter number; e.g Genesis 1
  void updateChapterNumber(String chapterNumber) {
    state = state.copyWith(chapterNumber: chapterNumber);
  }

  /// Returns all the available translations from the remote or cache
  Future<void> getAllTranslations() async {
    state = state.copyWith(loading: true);
    final allTranslations = await _facade.getTranslations();
    state = state.copyWith(loading: false, translations: allTranslations);
  }

  /// Select a translation; e.g. KJV
  Future<void> updateTranslation(String translation) async {
    state = state.copyWith(translation: translation);
  }

  /// Returns the chapter - Genesis 1, with all the verses in that
  /// chapter
  Future<void> getChapter(String chapterNumber, [String? verseNumber]) async {
    final ref1 = '${state.book.name?.last} $chapterNumber';
    final ref2 = '${state.book.name?.last} $chapterNumber:$verseNumber';
    state = state.copyWith(
      chapterNumber: chapterNumber,
      reference: verseNumber == null ? ref1 : ref2,
      translation: state.translation,
      loading: true,
    );
    final res = await _facade.getChapter(state.reference, state.translation);
    state = state.copyWith(chapter: res, loading: false);
  }

  Future<void> init() async {
    state = state.copyWith(loading: true);
    final res = await _facade.getChapter(state.reference, state.translation);
    state = state.copyWith(chapter: res, loading: false);
  }

  // / Select a verse; e.g. Genesis 1:2
  // Future<void> updateVerse(String verseNumber) async {
  //   final reference = '${state.bookName} ${state.chapterName}:$verseNumber';
  //   state = state.copyWith(reference: reference, loading: true);
  //   final res = await _facade.getChapter(reference, state.translation.name!);
  //   state = state.copyWith(chapter: res, loading: false);
  // }
}
