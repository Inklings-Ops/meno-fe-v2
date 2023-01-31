// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDto _$BookDtoFromJson(Map<String, dynamic> json) {
  return _BookDto.fromJson(json);
}

/// @nodoc
mixin _$BookDto {
  List<String>? get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDtoCopyWith<BookDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDtoCopyWith<$Res> {
  factory $BookDtoCopyWith(BookDto value, $Res Function(BookDto) then) =
      _$BookDtoCopyWithImpl<$Res, BookDto>;
  @useResult
  $Res call({List<String>? book});
}

/// @nodoc
class _$BookDtoCopyWithImpl<$Res, $Val extends BookDto>
    implements $BookDtoCopyWith<$Res> {
  _$BookDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookDtoCopyWith<$Res> implements $BookDtoCopyWith<$Res> {
  factory _$$_BookDtoCopyWith(
          _$_BookDto value, $Res Function(_$_BookDto) then) =
      __$$_BookDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? book});
}

/// @nodoc
class __$$_BookDtoCopyWithImpl<$Res>
    extends _$BookDtoCopyWithImpl<$Res, _$_BookDto>
    implements _$$_BookDtoCopyWith<$Res> {
  __$$_BookDtoCopyWithImpl(_$_BookDto _value, $Res Function(_$_BookDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_$_BookDto(
      book: freezed == book
          ? _value._book
          : book // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDto implements _BookDto {
  _$_BookDto({final List<String>? book}) : _book = book;

  factory _$_BookDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookDtoFromJson(json);

  final List<String>? _book;
  @override
  List<String>? get book {
    final value = _book;
    if (value == null) return null;
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookDto(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDto &&
            const DeepCollectionEquality().equals(other._book, _book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_book));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      __$$_BookDtoCopyWithImpl<_$_BookDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDtoToJson(
      this,
    );
  }
}

abstract class _BookDto implements BookDto {
  factory _BookDto({final List<String>? book}) = _$_BookDto;

  factory _BookDto.fromJson(Map<String, dynamic> json) = _$_BookDto.fromJson;

  @override
  List<String>? get book;
  @override
  @JsonKey(ignore: true)
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      throw _privateConstructorUsedError;
}
