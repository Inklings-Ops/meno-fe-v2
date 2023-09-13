// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_broadcast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinBroadcastData {
  Broadcast get broadcast => throw _privateConstructorUsedError;
  String get broadcastToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinBroadcastDataCopyWith<JoinBroadcastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinBroadcastDataCopyWith<$Res> {
  factory $JoinBroadcastDataCopyWith(
          JoinBroadcastData value, $Res Function(JoinBroadcastData) then) =
      _$JoinBroadcastDataCopyWithImpl<$Res, JoinBroadcastData>;
  @useResult
  $Res call({Broadcast broadcast, String broadcastToken});

  $BroadcastCopyWith<$Res> get broadcast;
}

/// @nodoc
class _$JoinBroadcastDataCopyWithImpl<$Res, $Val extends JoinBroadcastData>
    implements $JoinBroadcastDataCopyWith<$Res> {
  _$JoinBroadcastDataCopyWithImpl(this._value, this._then);

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
              as Broadcast,
      broadcastToken: null == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BroadcastCopyWith<$Res> get broadcast {
    return $BroadcastCopyWith<$Res>(_value.broadcast, (value) {
      return _then(_value.copyWith(broadcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JoinBroadcastDataCopyWith<$Res>
    implements $JoinBroadcastDataCopyWith<$Res> {
  factory _$$_JoinBroadcastDataCopyWith(_$_JoinBroadcastData value,
          $Res Function(_$_JoinBroadcastData) then) =
      __$$_JoinBroadcastDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Broadcast broadcast, String broadcastToken});

  @override
  $BroadcastCopyWith<$Res> get broadcast;
}

/// @nodoc
class __$$_JoinBroadcastDataCopyWithImpl<$Res>
    extends _$JoinBroadcastDataCopyWithImpl<$Res, _$_JoinBroadcastData>
    implements _$$_JoinBroadcastDataCopyWith<$Res> {
  __$$_JoinBroadcastDataCopyWithImpl(
      _$_JoinBroadcastData _value, $Res Function(_$_JoinBroadcastData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcast = null,
    Object? broadcastToken = null,
  }) {
    return _then(_$_JoinBroadcastData(
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast,
      broadcastToken: null == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JoinBroadcastData implements _JoinBroadcastData {
  const _$_JoinBroadcastData(
      {required this.broadcast, required this.broadcastToken});

  @override
  final Broadcast broadcast;
  @override
  final String broadcastToken;

  @override
  String toString() {
    return 'JoinBroadcastData(broadcast: $broadcast, broadcastToken: $broadcastToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinBroadcastData &&
            (identical(other.broadcast, broadcast) ||
                other.broadcast == broadcast) &&
            (identical(other.broadcastToken, broadcastToken) ||
                other.broadcastToken == broadcastToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, broadcast, broadcastToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinBroadcastDataCopyWith<_$_JoinBroadcastData> get copyWith =>
      __$$_JoinBroadcastDataCopyWithImpl<_$_JoinBroadcastData>(
          this, _$identity);
}

abstract class _JoinBroadcastData implements JoinBroadcastData {
  const factory _JoinBroadcastData(
      {required final Broadcast broadcast,
      required final String broadcastToken}) = _$_JoinBroadcastData;

  @override
  Broadcast get broadcast;
  @override
  String get broadcastToken;
  @override
  @JsonKey(ignore: true)
  _$$_JoinBroadcastDataCopyWith<_$_JoinBroadcastData> get copyWith =>
      throw _privateConstructorUsedError;
}
