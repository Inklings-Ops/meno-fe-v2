// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorDto _$CreatorDtoFromJson(Map<String, dynamic> json) {
  return _CreatorDto.fromJson(json);
}

/// @nodoc
mixin _$CreatorDto {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorDtoCopyWith<CreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDtoCopyWith<$Res> {
  factory $CreatorDtoCopyWith(
          CreatorDto value, $Res Function(CreatorDto) then) =
      _$CreatorDtoCopyWithImpl<$Res, CreatorDto>;
  @useResult
  $Res call({String? id, String? fullName, String? imageUrl});
}

/// @nodoc
class _$CreatorDtoCopyWithImpl<$Res, $Val extends CreatorDto>
    implements $CreatorDtoCopyWith<$Res> {
  _$CreatorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatorDtoCopyWith<$Res>
    implements $CreatorDtoCopyWith<$Res> {
  factory _$$_CreatorDtoCopyWith(
          _$_CreatorDto value, $Res Function(_$_CreatorDto) then) =
      __$$_CreatorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? fullName, String? imageUrl});
}

/// @nodoc
class __$$_CreatorDtoCopyWithImpl<$Res>
    extends _$CreatorDtoCopyWithImpl<$Res, _$_CreatorDto>
    implements _$$_CreatorDtoCopyWith<$Res> {
  __$$_CreatorDtoCopyWithImpl(
      _$_CreatorDto _value, $Res Function(_$_CreatorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_CreatorDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorDto implements _CreatorDto {
  _$_CreatorDto({this.id, this.fullName, this.imageUrl});

  factory _$_CreatorDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CreatorDto(id: $id, fullName: $fullName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorDtoCopyWith<_$_CreatorDto> get copyWith =>
      __$$_CreatorDtoCopyWithImpl<_$_CreatorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorDtoToJson(
      this,
    );
  }
}

abstract class _CreatorDto implements CreatorDto {
  factory _CreatorDto(
      {final String? id,
      final String? fullName,
      final String? imageUrl}) = _$_CreatorDto;

  factory _CreatorDto.fromJson(Map<String, dynamic> json) =
      _$_CreatorDto.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorDtoCopyWith<_$_CreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
