// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_listener.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BroadcastListener {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastListenerCopyWith<BroadcastListener> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastListenerCopyWith<$Res> {
  factory $BroadcastListenerCopyWith(
          BroadcastListener value, $Res Function(BroadcastListener) then) =
      _$BroadcastListenerCopyWithImpl<$Res, BroadcastListener>;
  @useResult
  $Res call({String id, String fullName, String? imageUrl});
}

/// @nodoc
class _$BroadcastListenerCopyWithImpl<$Res, $Val extends BroadcastListener>
    implements $BroadcastListenerCopyWith<$Res> {
  _$BroadcastListenerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastListenerCopyWith<$Res>
    implements $BroadcastListenerCopyWith<$Res> {
  factory _$$_BroadcastListenerCopyWith(_$_BroadcastListener value,
          $Res Function(_$_BroadcastListener) then) =
      __$$_BroadcastListenerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String fullName, String? imageUrl});
}

/// @nodoc
class __$$_BroadcastListenerCopyWithImpl<$Res>
    extends _$BroadcastListenerCopyWithImpl<$Res, _$_BroadcastListener>
    implements _$$_BroadcastListenerCopyWith<$Res> {
  __$$_BroadcastListenerCopyWithImpl(
      _$_BroadcastListener _value, $Res Function(_$_BroadcastListener) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_BroadcastListener(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BroadcastListener implements _BroadcastListener {
  const _$_BroadcastListener(
      {required this.id, required this.fullName, this.imageUrl});

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'BroadcastListener(id: $id, fullName: $fullName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastListener &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastListenerCopyWith<_$_BroadcastListener> get copyWith =>
      __$$_BroadcastListenerCopyWithImpl<_$_BroadcastListener>(
          this, _$identity);
}

abstract class _BroadcastListener implements BroadcastListener {
  const factory _BroadcastListener(
      {required final String id,
      required final String fullName,
      final String? imageUrl}) = _$_BroadcastListener;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastListenerCopyWith<_$_BroadcastListener> get copyWith =>
      throw _privateConstructorUsedError;
}
