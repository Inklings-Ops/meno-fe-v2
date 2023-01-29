// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_broadcast_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinBroadcastDataDto _$JoinBroadcastDataDtoFromJson(Map<String, dynamic> json) {
  return _JoinBroadcastDataDto.fromJson(json);
}

/// @nodoc
mixin _$JoinBroadcastDataDto {
  String? get agoraToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinBroadcastDataDtoCopyWith<JoinBroadcastDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinBroadcastDataDtoCopyWith<$Res> {
  factory $JoinBroadcastDataDtoCopyWith(JoinBroadcastDataDto value,
          $Res Function(JoinBroadcastDataDto) then) =
      _$JoinBroadcastDataDtoCopyWithImpl<$Res, JoinBroadcastDataDto>;
  @useResult
  $Res call({String? agoraToken});
}

/// @nodoc
class _$JoinBroadcastDataDtoCopyWithImpl<$Res,
        $Val extends JoinBroadcastDataDto>
    implements $JoinBroadcastDataDtoCopyWith<$Res> {
  _$JoinBroadcastDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agoraToken = freezed,
  }) {
    return _then(_value.copyWith(
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinBroadcastDataDtoCopyWith<$Res>
    implements $JoinBroadcastDataDtoCopyWith<$Res> {
  factory _$$_JoinBroadcastDataDtoCopyWith(_$_JoinBroadcastDataDto value,
          $Res Function(_$_JoinBroadcastDataDto) then) =
      __$$_JoinBroadcastDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? agoraToken});
}

/// @nodoc
class __$$_JoinBroadcastDataDtoCopyWithImpl<$Res>
    extends _$JoinBroadcastDataDtoCopyWithImpl<$Res, _$_JoinBroadcastDataDto>
    implements _$$_JoinBroadcastDataDtoCopyWith<$Res> {
  __$$_JoinBroadcastDataDtoCopyWithImpl(_$_JoinBroadcastDataDto _value,
      $Res Function(_$_JoinBroadcastDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agoraToken = freezed,
  }) {
    return _then(_$_JoinBroadcastDataDto(
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinBroadcastDataDto implements _JoinBroadcastDataDto {
  _$_JoinBroadcastDataDto({this.agoraToken});

  factory _$_JoinBroadcastDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_JoinBroadcastDataDtoFromJson(json);

  @override
  final String? agoraToken;

  @override
  String toString() {
    return 'JoinBroadcastDataDto(agoraToken: $agoraToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinBroadcastDataDto &&
            (identical(other.agoraToken, agoraToken) ||
                other.agoraToken == agoraToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, agoraToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinBroadcastDataDtoCopyWith<_$_JoinBroadcastDataDto> get copyWith =>
      __$$_JoinBroadcastDataDtoCopyWithImpl<_$_JoinBroadcastDataDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinBroadcastDataDtoToJson(
      this,
    );
  }
}

abstract class _JoinBroadcastDataDto implements JoinBroadcastDataDto {
  factory _JoinBroadcastDataDto({final String? agoraToken}) =
      _$_JoinBroadcastDataDto;

  factory _JoinBroadcastDataDto.fromJson(Map<String, dynamic> json) =
      _$_JoinBroadcastDataDto.fromJson;

  @override
  String? get agoraToken;
  @override
  @JsonKey(ignore: true)
  _$$_JoinBroadcastDataDtoCopyWith<_$_JoinBroadcastDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
