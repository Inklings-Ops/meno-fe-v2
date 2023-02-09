// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Verse {
  String get bookId => throw _privateConstructorUsedError;
  String get bookName => throw _privateConstructorUsedError;
  int get chapter => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get verse => throw _privateConstructorUsedError;
  String? get vid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call(
      {String bookId,
      String bookName,
      int chapter,
      String text,
      int verse,
      String? vid});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? bookName = null,
    Object? chapter = null,
    Object? text = null,
    Object? verse = null,
    Object? vid = freezed,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerseCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$_VerseCopyWith(_$_Verse value, $Res Function(_$_Verse) then) =
      __$$_VerseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String bookName,
      int chapter,
      String text,
      int verse,
      String? vid});
}

/// @nodoc
class __$$_VerseCopyWithImpl<$Res> extends _$VerseCopyWithImpl<$Res, _$_Verse>
    implements _$$_VerseCopyWith<$Res> {
  __$$_VerseCopyWithImpl(_$_Verse _value, $Res Function(_$_Verse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? bookName = null,
    Object? chapter = null,
    Object? text = null,
    Object? verse = null,
    Object? vid = freezed,
  }) {
    return _then(_$_Verse(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Verse implements _Verse {
  const _$_Verse(
      {required this.bookId,
      required this.bookName,
      required this.chapter,
      required this.text,
      required this.verse,
      this.vid});

  @override
  final String bookId;
  @override
  final String bookName;
  @override
  final int chapter;
  @override
  final String text;
  @override
  final int verse;
  @override
  final String? vid;

  @override
  String toString() {
    return 'Verse(bookId: $bookId, bookName: $bookName, chapter: $chapter, text: $text, verse: $verse, vid: $vid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verse &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.vid, vid) || other.vid == vid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, bookName, chapter, text, verse, vid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      __$$_VerseCopyWithImpl<_$_Verse>(this, _$identity);
}

abstract class _Verse implements Verse {
  const factory _Verse(
      {required final String bookId,
      required final String bookName,
      required final int chapter,
      required final String text,
      required final int verse,
      final String? vid}) = _$_Verse;

  @override
  String get bookId;
  @override
  String get bookName;
  @override
  int get chapter;
  @override
  String get text;
  @override
  int get verse;
  @override
  String? get vid;
  @override
  @JsonKey(ignore: true)
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      throw _privateConstructorUsedError;
}
