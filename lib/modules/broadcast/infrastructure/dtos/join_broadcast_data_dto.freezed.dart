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
  BroadcastDto get broadcast => throw _privateConstructorUsedError;
  String get broadcastToken => throw _privateConstructorUsedError;

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
  $Res call({BroadcastDto broadcast, String broadcastToken});

  $BroadcastDtoCopyWith<$Res> get broadcast;
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
    Object? broadcast = null,
    Object? broadcastToken = null,
  }) {
    return _then(_value.copyWith(
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastDto,
      broadcastToken: null == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BroadcastDtoCopyWith<$Res> get broadcast {
    return $BroadcastDtoCopyWith<$Res>(_value.broadcast, (value) {
      return _then(_value.copyWith(broadcast: value) as $Val);
    });
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
  $Res call({BroadcastDto broadcast, String broadcastToken});

  @override
  $BroadcastDtoCopyWith<$Res> get broadcast;
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
    Object? broadcast = null,
    Object? broadcastToken = null,
  }) {
    return _then(_$_JoinBroadcastDataDto(
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastDto,
      broadcastToken: null == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JoinBroadcastDataDto implements _JoinBroadcastDataDto {
  _$_JoinBroadcastDataDto(
      {required this.broadcast, required this.broadcastToken});

  factory _$_JoinBroadcastDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_JoinBroadcastDataDtoFromJson(json);

  @override
  final BroadcastDto broadcast;
  @override
  final String broadcastToken;

  @override
  String toString() {
    return 'JoinBroadcastDataDto(broadcast: $broadcast, broadcastToken: $broadcastToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinBroadcastDataDto &&
            (identical(other.broadcast, broadcast) ||
                other.broadcast == broadcast) &&
            (identical(other.broadcastToken, broadcastToken) ||
                other.broadcastToken == broadcastToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcast, broadcastToken);

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
  factory _JoinBroadcastDataDto(
      {required final BroadcastDto broadcast,
      required final String broadcastToken}) = _$_JoinBroadcastDataDto;

  factory _JoinBroadcastDataDto.fromJson(Map<String, dynamic> json) =
      _$_JoinBroadcastDataDto.fromJson;

  @override
  BroadcastDto get broadcast;
  @override
  String get broadcastToken;
  @override
  @JsonKey(ignore: true)
  _$$_JoinBroadcastDataDtoCopyWith<_$_JoinBroadcastDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
