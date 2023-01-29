// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_listener_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcastListenerDto _$BroadcastListenerDtoFromJson(Map<String, dynamic> json) {
  return _BroadcastListenerDto.fromJson(json);
}

/// @nodoc
mixin _$BroadcastListenerDto {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastListenerDtoCopyWith<BroadcastListenerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastListenerDtoCopyWith<$Res> {
  factory $BroadcastListenerDtoCopyWith(BroadcastListenerDto value,
          $Res Function(BroadcastListenerDto) then) =
      _$BroadcastListenerDtoCopyWithImpl<$Res, BroadcastListenerDto>;
  @useResult
  $Res call({String id, String fullName});
}

/// @nodoc
class _$BroadcastListenerDtoCopyWithImpl<$Res,
        $Val extends BroadcastListenerDto>
    implements $BroadcastListenerDtoCopyWith<$Res> {
  _$BroadcastListenerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastListenerDtoCopyWith<$Res>
    implements $BroadcastListenerDtoCopyWith<$Res> {
  factory _$$_BroadcastListenerDtoCopyWith(_$_BroadcastListenerDto value,
          $Res Function(_$_BroadcastListenerDto) then) =
      __$$_BroadcastListenerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String fullName});
}

/// @nodoc
class __$$_BroadcastListenerDtoCopyWithImpl<$Res>
    extends _$BroadcastListenerDtoCopyWithImpl<$Res, _$_BroadcastListenerDto>
    implements _$$_BroadcastListenerDtoCopyWith<$Res> {
  __$$_BroadcastListenerDtoCopyWithImpl(_$_BroadcastListenerDto _value,
      $Res Function(_$_BroadcastListenerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
  }) {
    return _then(_$_BroadcastListenerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcastListenerDto implements _BroadcastListenerDto {
  _$_BroadcastListenerDto({required this.id, required this.fullName});

  factory _$_BroadcastListenerDto.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcastListenerDtoFromJson(json);

  @override
  final String id;
  @override
  final String fullName;

  @override
  String toString() {
    return 'BroadcastListenerDto(id: $id, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastListenerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastListenerDtoCopyWith<_$_BroadcastListenerDto> get copyWith =>
      __$$_BroadcastListenerDtoCopyWithImpl<_$_BroadcastListenerDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastListenerDtoToJson(
      this,
    );
  }
}

abstract class _BroadcastListenerDto implements BroadcastListenerDto {
  factory _BroadcastListenerDto(
      {required final String id,
      required final String fullName}) = _$_BroadcastListenerDto;

  factory _BroadcastListenerDto.fromJson(Map<String, dynamic> json) =
      _$_BroadcastListenerDto.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastListenerDtoCopyWith<_$_BroadcastListenerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
