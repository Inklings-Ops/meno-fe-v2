// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bible_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BibleState {
  bool get loading => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError; //
  Book get book => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError; //
  Chapter get chapter => throw _privateConstructorUsedError;
  String get chapterNumber => throw _privateConstructorUsedError;
  int get numberOfChapters => throw _privateConstructorUsedError; //
  Translation get translation => throw _privateConstructorUsedError;
  List<Translation>? get translations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BibleStateCopyWith<BibleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleStateCopyWith<$Res> {
  factory $BibleStateCopyWith(
          BibleState value, $Res Function(BibleState) then) =
      _$BibleStateCopyWithImpl<$Res, BibleState>;
  @useResult
  $Res call(
      {bool loading,
      String reference,
      Book book,
      List<Book> books,
      Chapter chapter,
      String chapterNumber,
      int numberOfChapters,
      Translation translation,
      List<Translation>? translations});

  $BookCopyWith<$Res> get book;
  $ChapterCopyWith<$Res> get chapter;
  $TranslationCopyWith<$Res> get translation;
}

/// @nodoc
class _$BibleStateCopyWithImpl<$Res, $Val extends BibleState>
    implements $BibleStateCopyWith<$Res> {
  _$BibleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? reference = null,
    Object? book = null,
    Object? books = null,
    Object? chapter = null,
    Object? chapterNumber = null,
    Object? numberOfChapters = null,
    Object? translation = null,
    Object? translations = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChapters: null == numberOfChapters
          ? _value.numberOfChapters
          : numberOfChapters // ignore: cast_nullable_to_non_nullable
              as int,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationCopyWith<$Res> get translation {
    return $TranslationCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BibleStateCopyWith<$Res>
    implements $BibleStateCopyWith<$Res> {
  factory _$$_BibleStateCopyWith(
          _$_BibleState value, $Res Function(_$_BibleState) then) =
      __$$_BibleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String reference,
      Book book,
      List<Book> books,
      Chapter chapter,
      String chapterNumber,
      int numberOfChapters,
      Translation translation,
      List<Translation>? translations});

  @override
  $BookCopyWith<$Res> get book;
  @override
  $ChapterCopyWith<$Res> get chapter;
  @override
  $TranslationCopyWith<$Res> get translation;
}

/// @nodoc
class __$$_BibleStateCopyWithImpl<$Res>
    extends _$BibleStateCopyWithImpl<$Res, _$_BibleState>
    implements _$$_BibleStateCopyWith<$Res> {
  __$$_BibleStateCopyWithImpl(
      _$_BibleState _value, $Res Function(_$_BibleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? reference = null,
    Object? book = null,
    Object? books = null,
    Object? chapter = null,
    Object? chapterNumber = null,
    Object? numberOfChapters = null,
    Object? translation = null,
    Object? translations = freezed,
  }) {
    return _then(_$_BibleState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChapters: null == numberOfChapters
          ? _value.numberOfChapters
          : numberOfChapters // ignore: cast_nullable_to_non_nullable
              as int,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation,
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>?,
    ));
  }
}

/// @nodoc

class _$_BibleState implements _BibleState {
  const _$_BibleState(
      {required this.loading,
      required this.reference,
      required this.book,
      required final List<Book> books,
      required this.chapter,
      required this.chapterNumber,
      required this.numberOfChapters,
      required this.translation,
      required final List<Translation>? translations})
      : _books = books,
        _translations = translations;

  @override
  final bool loading;
  @override
  final String reference;
//
  @override
  final Book book;
  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

//
  @override
  final Chapter chapter;
  @override
  final String chapterNumber;
  @override
  final int numberOfChapters;
//
  @override
  final Translation translation;
  final List<Translation>? _translations;
  @override
  List<Translation>? get translations {
    final value = _translations;
    if (value == null) return null;
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BibleState(loading: $loading, reference: $reference, book: $book, books: $books, chapter: $chapter, chapterNumber: $chapterNumber, numberOfChapters: $numberOfChapters, translation: $translation, translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BibleState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.numberOfChapters, numberOfChapters) ||
                other.numberOfChapters == numberOfChapters) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      reference,
      book,
      const DeepCollectionEquality().hash(_books),
      chapter,
      chapterNumber,
      numberOfChapters,
      translation,
      const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BibleStateCopyWith<_$_BibleState> get copyWith =>
      __$$_BibleStateCopyWithImpl<_$_BibleState>(this, _$identity);
}

abstract class _BibleState implements BibleState {
  const factory _BibleState(
      {required final bool loading,
      required final String reference,
      required final Book book,
      required final List<Book> books,
      required final Chapter chapter,
      required final String chapterNumber,
      required final int numberOfChapters,
      required final Translation translation,
      required final List<Translation>? translations}) = _$_BibleState;

  @override
  bool get loading;
  @override
  String get reference;
  @override //
  Book get book;
  @override
  List<Book> get books;
  @override //
  Chapter get chapter;
  @override
  String get chapterNumber;
  @override
  int get numberOfChapters;
  @override //
  Translation get translation;
  @override
  List<Translation>? get translations;
  @override
  @JsonKey(ignore: true)
  _$$_BibleStateCopyWith<_$_BibleState> get copyWith =>
      throw _privateConstructorUsedError;
}
