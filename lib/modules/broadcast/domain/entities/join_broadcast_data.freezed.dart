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
  String? get agoraToken => throw _privateConstructorUsedError;

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
  $Res call({String? agoraToken});
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
abstract class _$$_JoinBroadcastDataCopyWith<$Res>
    implements $JoinBroadcastDataCopyWith<$Res> {
  factory _$$_JoinBroadcastDataCopyWith(_$_JoinBroadcastData value,
          $Res Function(_$_JoinBroadcastData) then) =
      __$$_JoinBroadcastDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? agoraToken});
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
    Object? agoraToken = freezed,
  }) {
    return _then(_$_JoinBroadcastData(
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_JoinBroadcastData implements _JoinBroadcastData {
  const _$_JoinBroadcastData({this.agoraToken});

  @override
  final String? agoraToken;

  @override
  String toString() {
    return 'JoinBroadcastData(agoraToken: $agoraToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinBroadcastData &&
            (identical(other.agoraToken, agoraToken) ||
                other.agoraToken == agoraToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agoraToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinBroadcastDataCopyWith<_$_JoinBroadcastData> get copyWith =>
      __$$_JoinBroadcastDataCopyWithImpl<_$_JoinBroadcastData>(
          this, _$identity);
}

abstract class _JoinBroadcastData implements JoinBroadcastData {
  const factory _JoinBroadcastData({final String? agoraToken}) =
      _$_JoinBroadcastData;

  @override
  String? get agoraToken;
  @override
  @JsonKey(ignore: true)
  _$$_JoinBroadcastDataCopyWith<_$_JoinBroadcastData> get copyWith =>
      throw _privateConstructorUsedError;
}
