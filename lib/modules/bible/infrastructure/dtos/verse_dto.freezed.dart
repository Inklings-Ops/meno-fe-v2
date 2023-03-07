// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerseDto _$VerseDtoFromJson(Map<String, dynamic> json) {
  return _VerseDto.fromJson(json);
}

/// @nodoc
mixin _$VerseDto {
  @JsonKey(name: 'book_id')
  String? get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_name')
  String? get bookName => throw _privateConstructorUsedError;
  int? get chapter => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseDtoCopyWith<VerseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseDtoCopyWith<$Res> {
  factory $VerseDtoCopyWith(VerseDto value, $Res Function(VerseDto) then) =
      _$VerseDtoCopyWithImpl<$Res, VerseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id') String? bookId,
      @JsonKey(name: 'book_name') String? bookName,
      int? chapter,
      String? text,
      int? verse});
}

/// @nodoc
class _$VerseDtoCopyWithImpl<$Res, $Val extends VerseDto>
    implements $VerseDtoCopyWith<$Res> {
  _$VerseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = freezed,
    Object? bookName = freezed,
    Object? chapter = freezed,
    Object? text = freezed,
    Object? verse = freezed,
  }) {
    return _then(_value.copyWith(
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookName: freezed == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerseDtoCopyWith<$Res> implements $VerseDtoCopyWith<$Res> {
  factory _$$_VerseDtoCopyWith(
          _$_VerseDto value, $Res Function(_$_VerseDto) then) =
      __$$_VerseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id') String? bookId,
      @JsonKey(name: 'book_name') String? bookName,
      int? chapter,
      String? text,
      int? verse});
}

/// @nodoc
class __$$_VerseDtoCopyWithImpl<$Res>
    extends _$VerseDtoCopyWithImpl<$Res, _$_VerseDto>
    implements _$$_VerseDtoCopyWith<$Res> {
  __$$_VerseDtoCopyWithImpl(
      _$_VerseDto _value, $Res Function(_$_VerseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = freezed,
    Object? bookName = freezed,
    Object? chapter = freezed,
    Object? text = freezed,
    Object? verse = freezed,
  }) {
    return _then(_$_VerseDto(
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookName: freezed == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerseDto implements _VerseDto {
  _$_VerseDto(
      {@JsonKey(name: 'book_id') this.bookId,
      @JsonKey(name: 'book_name') this.bookName,
      this.chapter,
      this.text,
      this.verse});

  factory _$_VerseDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerseDtoFromJson(json);

  @override
  @JsonKey(name: 'book_id')
  final String? bookId;
  @override
  @JsonKey(name: 'book_name')
  final String? bookName;
  @override
  final int? chapter;
  @override
  final String? text;
  @override
  final int? verse;

  @override
  String toString() {
    return 'VerseDto(bookId: $bookId, bookName: $bookName, chapter: $chapter, text: $text, verse: $verse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerseDto &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.verse, verse) || other.verse == verse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, bookName, chapter, text, verse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerseDtoCopyWith<_$_VerseDto> get copyWith =>
      __$$_VerseDtoCopyWithImpl<_$_VerseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerseDtoToJson(
      this,
    );
  }
}

abstract class _VerseDto implements VerseDto {
  factory _VerseDto(
      {@JsonKey(name: 'book_id') final String? bookId,
      @JsonKey(name: 'book_name') final String? bookName,
      final int? chapter,
      final String? text,
      final int? verse}) = _$_VerseDto;

  factory _VerseDto.fromJson(Map<String, dynamic> json) = _$_VerseDto.fromJson;

  @override
  @JsonKey(name: 'book_id')
  String? get bookId;
  @override
  @JsonKey(name: 'book_name')
  String? get bookName;
  @override
  int? get chapter;
  @override
  String? get text;
  @override
  int? get verse;
  @override
  @JsonKey(ignore: true)
  _$$_VerseDtoCopyWith<_$_VerseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
