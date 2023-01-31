import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({List<String>? book}) = _Book;

  factory Book.empty() {
    return const Book(book: ['Gen', 'Genesis']);
  }
}
