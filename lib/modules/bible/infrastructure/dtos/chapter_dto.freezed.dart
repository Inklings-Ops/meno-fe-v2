// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChapterDto _$ChapterDtoFromJson(Map<String, dynamic> json) {
  return _ChapterDto.fromJson(json);
}

/// @nodoc
mixin _$ChapterDto {
  String get reference => throw _privateConstructorUsedError;
  List<VerseDto?> get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterDtoCopyWith<ChapterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDtoCopyWith<$Res> {
  factory $ChapterDtoCopyWith(
          ChapterDto value, $Res Function(ChapterDto) then) =
      _$ChapterDtoCopyWithImpl<$Res, ChapterDto>;
  @useResult
  $Res call({String reference, List<VerseDto?> verses});
}

/// @nodoc
class _$ChapterDtoCopyWithImpl<$Res, $Val extends ChapterDto>
    implements $ChapterDtoCopyWith<$Res> {
  _$ChapterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? verses = null,
  }) {
    return _then(_value.copyWith(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      verses: null == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseDto?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterDtoCopyWith<$Res>
    implements $ChapterDtoCopyWith<$Res> {
  factory _$$_ChapterDtoCopyWith(
          _$_ChapterDto value, $Res Function(_$_ChapterDto) then) =
      __$$_ChapterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reference, List<VerseDto?> verses});
}

/// @nodoc
class __$$_ChapterDtoCopyWithImpl<$Res>
    extends _$ChapterDtoCopyWithImpl<$Res, _$_ChapterDto>
    implements _$$_ChapterDtoCopyWith<$Res> {
  __$$_ChapterDtoCopyWithImpl(
      _$_ChapterDto _value, $Res Function(_$_ChapterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? verses = null,
  }) {
    return _then(_$_ChapterDto(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseDto?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterDto implements _ChapterDto {
  _$_ChapterDto(
      {required this.reference, required final List<VerseDto?> verses})
      : _verses = verses;

  factory _$_ChapterDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterDtoFromJson(json);

  @override
  final String reference;
  final List<VerseDto?> _verses;
  @override
  List<VerseDto?> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  String toString() {
    return 'ChapterDto(reference: $reference, verses: $verses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterDto &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, reference, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterDtoCopyWith<_$_ChapterDto> get copyWith =>
      __$$_ChapterDtoCopyWithImpl<_$_ChapterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterDtoToJson(
      this,
    );
  }
}

abstract class _ChapterDto implements ChapterDto {
  factory _ChapterDto(
      {required final String reference,
      required final List<VerseDto?> verses}) = _$_ChapterDto;

  factory _ChapterDto.fromJson(Map<String, dynamic> json) =
      _$_ChapterDto.fromJson;

  @override
  String get reference;
  @override
  List<VerseDto?> get verses;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterDtoCopyWith<_$_ChapterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
