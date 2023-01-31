// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TranslationDto _$TranslationDtoFromJson(Map<String, dynamic> json) {
  return _TranslationDto.fromJson(json);
}

/// @nodoc
mixin _$TranslationDto {
  String? get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationDtoCopyWith<TranslationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationDtoCopyWith<$Res> {
  factory $TranslationDtoCopyWith(
          TranslationDto value, $Res Function(TranslationDto) then) =
      _$TranslationDtoCopyWithImpl<$Res, TranslationDto>;
  @useResult
  $Res call({String? translation});
}

/// @nodoc
class _$TranslationDtoCopyWithImpl<$Res, $Val extends TranslationDto>
    implements $TranslationDtoCopyWith<$Res> {
  _$TranslationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translation = freezed,
  }) {
    return _then(_value.copyWith(
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslationDtoCopyWith<$Res>
    implements $TranslationDtoCopyWith<$Res> {
  factory _$$_TranslationDtoCopyWith(
          _$_TranslationDto value, $Res Function(_$_TranslationDto) then) =
      __$$_TranslationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? translation});
}

/// @nodoc
class __$$_TranslationDtoCopyWithImpl<$Res>
    extends _$TranslationDtoCopyWithImpl<$Res, _$_TranslationDto>
    implements _$$_TranslationDtoCopyWith<$Res> {
  __$$_TranslationDtoCopyWithImpl(
      _$_TranslationDto _value, $Res Function(_$_TranslationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translation = freezed,
  }) {
    return _then(_$_TranslationDto(
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TranslationDto implements _TranslationDto {
  _$_TranslationDto({this.translation});

  factory _$_TranslationDto.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationDtoFromJson(json);

  @override
  final String? translation;

  @override
  String toString() {
    return 'TranslationDto(translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslationDto &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslationDtoCopyWith<_$_TranslationDto> get copyWith =>
      __$$_TranslationDtoCopyWithImpl<_$_TranslationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationDtoToJson(
      this,
    );
  }
}

abstract class _TranslationDto implements TranslationDto {
  factory _TranslationDto({final String? translation}) = _$_TranslationDto;

  factory _TranslationDto.fromJson(Map<String, dynamic> json) =
      _$_TranslationDto.fromJson;

  @override
  String? get translation;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationDtoCopyWith<_$_TranslationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
