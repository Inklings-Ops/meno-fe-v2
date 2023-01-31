import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse.freezed.dart';

@freezed
class Verse with _$Verse {
  const factory Verse({
    required String bookId,
    required String bookName,
    required int chapter,
    required String text,
    required int verse,
    required String vid,
  }) = _Verse;

  factory Verse.empty() {
    return const Verse(
      bookId: 'Gen',
      bookName: 'Genesis',
      chapter: 1,
      text: '',
      verse: 1,
      vid: '1:1',
    );
  }
}
