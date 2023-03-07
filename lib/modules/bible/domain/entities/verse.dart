import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse.freezed.dart';

@freezed
class Verse with _$Verse {
  const factory Verse({
    String? bookId,
    String? bookName,
    int? chapter,
    String? text,
    int? verse,
  }) = _Verse;

  factory Verse.empty() {
    return const Verse(
      bookId: 'Gen',
      bookName: 'Genesis',
      chapter: 1,
      text: '',
      verse: 1,
    );
  }
}
