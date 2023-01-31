part of 'bible_notifier.dart';

@freezed
class BibleState with _$BibleState {
  const factory BibleState({
    required bool loading,
    required String reference,
    //
    required Book book,
    required List<Book> books,
    //
    required Chapter chapter,
    required int numberOfChapters,
    required String chapterNumber,
    //
    required Translation translation,
    required List<Translation>? translations,
  }) = _BibleState;

  factory BibleState.initial() {
    return BibleState(
      loading: false,
      reference: 'Genesis 1',
      //
      book: allBooks[0],
      books: allBooks,
      //
      chapter: Chapter.empty(/*Genesis*/),
      numberOfChapters: 50,
      chapterNumber: '1',
      //
      translations: [],
      translation: const Translation(name: 'kjv'),
    );
  }
}
