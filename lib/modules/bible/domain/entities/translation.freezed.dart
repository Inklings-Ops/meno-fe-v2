// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Translation {
  String? get translation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({String? translation});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

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
abstract class _$$_TranslationCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$_TranslationCopyWith(
          _$_Translation value, $Res Function(_$_Translation) then) =
      __$$_TranslationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? translation});
}

/// @nodoc
class __$$_TranslationCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$_Translation>
    implements _$$_TranslationCopyWith<$Res> {
  __$$_TranslationCopyWithImpl(
      _$_Translation _value, $Res Function(_$_Translation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translation = freezed,
  }) {
    return _then(_$_Translation(
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Translation implements _Translation {
  const _$_Translation({this.translation});

  @override
  final String? translation;

  @override
  String toString() {
    return 'Translation(translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translation &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      __$$_TranslationCopyWithImpl<_$_Translation>(this, _$identity);
}

abstract class _Translation implements Translation {
  const factory _Translation({final String? translation}) = _$_Translation;

  @override
  String? get translation;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      throw _privateConstructorUsedError;
}
