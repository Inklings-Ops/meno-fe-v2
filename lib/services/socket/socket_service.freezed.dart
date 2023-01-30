// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocketState {
  List<Broadcast?>? get liveBroadcasts => throw _privateConstructorUsedError;
  List<BroadcastListener?>? get listeners => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get numberOfLiveListeners => throw _privateConstructorUsedError;
  int? get numberOfLiveBroadcasts => throw _privateConstructorUsedError;
  int? get numberOfListeners => throw _privateConstructorUsedError;
  BroadcastListener? get newListener => throw _privateConstructorUsedError;
  Broadcast? get liveBroadcast => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketStateCopyWith<SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
  @useResult
  $Res call(
      {List<Broadcast?>? liveBroadcasts,
      List<BroadcastListener?>? listeners,
      bool loading,
      int? numberOfLiveListeners,
      int? numberOfLiveBroadcasts,
      int? numberOfListeners,
      BroadcastListener? newListener,
      Broadcast? liveBroadcast,
      String? error});

  $BroadcastListenerCopyWith<$Res>? get newListener;
  $BroadcastCopyWith<$Res>? get liveBroadcast;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveBroadcasts = freezed,
    Object? listeners = freezed,
    Object? loading = null,
    Object? numberOfLiveListeners = freezed,
    Object? numberOfLiveBroadcasts = freezed,
    Object? numberOfListeners = freezed,
    Object? newListener = freezed,
    Object? liveBroadcast = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      liveBroadcasts: freezed == liveBroadcasts
          ? _value.liveBroadcasts
          : liveBroadcasts // ignore: cast_nullable_to_non_nullable
              as List<Broadcast?>?,
      listeners: freezed == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as List<BroadcastListener?>?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfLiveListeners: freezed == numberOfLiveListeners
          ? _value.numberOfLiveListeners
          : numberOfLiveListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfLiveBroadcasts: freezed == numberOfLiveBroadcasts
          ? _value.numberOfLiveBroadcasts
          : numberOfLiveBroadcasts // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfListeners: freezed == numberOfListeners
          ? _value.numberOfListeners
          : numberOfListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      newListener: freezed == newListener
          ? _value.newListener
          : newListener // ignore: cast_nullable_to_non_nullable
              as BroadcastListener?,
      liveBroadcast: freezed == liveBroadcast
          ? _value.liveBroadcast
          : liveBroadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BroadcastListenerCopyWith<$Res>? get newListener {
    if (_value.newListener == null) {
      return null;
    }

    return $BroadcastListenerCopyWith<$Res>(_value.newListener!, (value) {
      return _then(_value.copyWith(newListener: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BroadcastCopyWith<$Res>? get liveBroadcast {
    if (_value.liveBroadcast == null) {
      return null;
    }

    return $BroadcastCopyWith<$Res>(_value.liveBroadcast!, (value) {
      return _then(_value.copyWith(liveBroadcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SocketStateCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$_SocketStateCopyWith(
          _$_SocketState value, $Res Function(_$_SocketState) then) =
      __$$_SocketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Broadcast?>? liveBroadcasts,
      List<BroadcastListener?>? listeners,
      bool loading,
      int? numberOfLiveListeners,
      int? numberOfLiveBroadcasts,
      int? numberOfListeners,
      BroadcastListener? newListener,
      Broadcast? liveBroadcast,
      String? error});

  @override
  $BroadcastListenerCopyWith<$Res>? get newListener;
  @override
  $BroadcastCopyWith<$Res>? get liveBroadcast;
}

/// @nodoc
class __$$_SocketStateCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$_SocketState>
    implements _$$_SocketStateCopyWith<$Res> {
  __$$_SocketStateCopyWithImpl(
      _$_SocketState _value, $Res Function(_$_SocketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveBroadcasts = freezed,
    Object? listeners = freezed,
    Object? loading = null,
    Object? numberOfLiveListeners = freezed,
    Object? numberOfLiveBroadcasts = freezed,
    Object? numberOfListeners = freezed,
    Object? newListener = freezed,
    Object? liveBroadcast = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SocketState(
      liveBroadcasts: freezed == liveBroadcasts
          ? _value._liveBroadcasts
          : liveBroadcasts // ignore: cast_nullable_to_non_nullable
              as List<Broadcast?>?,
      listeners: freezed == listeners
          ? _value._listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as List<BroadcastListener?>?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfLiveListeners: freezed == numberOfLiveListeners
          ? _value.numberOfLiveListeners
          : numberOfLiveListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfLiveBroadcasts: freezed == numberOfLiveBroadcasts
          ? _value.numberOfLiveBroadcasts
          : numberOfLiveBroadcasts // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfListeners: freezed == numberOfListeners
          ? _value.numberOfListeners
          : numberOfListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      newListener: freezed == newListener
          ? _value.newListener
          : newListener // ignore: cast_nullable_to_non_nullable
              as BroadcastListener?,
      liveBroadcast: freezed == liveBroadcast
          ? _value.liveBroadcast
          : liveBroadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SocketState implements _SocketState {
  _$_SocketState(
      {final List<Broadcast?>? liveBroadcasts,
      final List<BroadcastListener?>? listeners,
      required this.loading,
      this.numberOfLiveListeners,
      this.numberOfLiveBroadcasts,
      this.numberOfListeners,
      this.newListener,
      this.liveBroadcast,
      this.error})
      : _liveBroadcasts = liveBroadcasts,
        _listeners = listeners;

  final List<Broadcast?>? _liveBroadcasts;
  @override
  List<Broadcast?>? get liveBroadcasts {
    final value = _liveBroadcasts;
    if (value == null) return null;
    if (_liveBroadcasts is EqualUnmodifiableListView) return _liveBroadcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BroadcastListener?>? _listeners;
  @override
  List<BroadcastListener?>? get listeners {
    final value = _listeners;
    if (value == null) return null;
    if (_listeners is EqualUnmodifiableListView) return _listeners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool loading;
  @override
  final int? numberOfLiveListeners;
  @override
  final int? numberOfLiveBroadcasts;
  @override
  final int? numberOfListeners;
  @override
  final BroadcastListener? newListener;
  @override
  final Broadcast? liveBroadcast;
  @override
  final String? error;

  @override
  String toString() {
    return 'SocketState(liveBroadcasts: $liveBroadcasts, listeners: $listeners, loading: $loading, numberOfLiveListeners: $numberOfLiveListeners, numberOfLiveBroadcasts: $numberOfLiveBroadcasts, numberOfListeners: $numberOfListeners, newListener: $newListener, liveBroadcast: $liveBroadcast, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketState &&
            const DeepCollectionEquality()
                .equals(other._liveBroadcasts, _liveBroadcasts) &&
            const DeepCollectionEquality()
                .equals(other._listeners, _listeners) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.numberOfLiveListeners, numberOfLiveListeners) ||
                other.numberOfLiveListeners == numberOfLiveListeners) &&
            (identical(other.numberOfLiveBroadcasts, numberOfLiveBroadcasts) ||
                other.numberOfLiveBroadcasts == numberOfLiveBroadcasts) &&
            (identical(other.numberOfListeners, numberOfListeners) ||
                other.numberOfListeners == numberOfListeners) &&
            (identical(other.newListener, newListener) ||
                other.newListener == newListener) &&
            (identical(other.liveBroadcast, liveBroadcast) ||
                other.liveBroadcast == liveBroadcast) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liveBroadcasts),
      const DeepCollectionEquality().hash(_listeners),
      loading,
      numberOfLiveListeners,
      numberOfLiveBroadcasts,
      numberOfListeners,
      newListener,
      liveBroadcast,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketStateCopyWith<_$_SocketState> get copyWith =>
      __$$_SocketStateCopyWithImpl<_$_SocketState>(this, _$identity);
}

abstract class _SocketState implements SocketState {
  factory _SocketState(
      {final List<Broadcast?>? liveBroadcasts,
      final List<BroadcastListener?>? listeners,
      required final bool loading,
      final int? numberOfLiveListeners,
      final int? numberOfLiveBroadcasts,
      final int? numberOfListeners,
      final BroadcastListener? newListener,
      final Broadcast? liveBroadcast,
      final String? error}) = _$_SocketState;

  @override
  List<Broadcast?>? get liveBroadcasts;
  @override
  List<BroadcastListener?>? get listeners;
  @override
  bool get loading;
  @override
  int? get numberOfLiveListeners;
  @override
  int? get numberOfLiveBroadcasts;
  @override
  int? get numberOfListeners;
  @override
  BroadcastListener? get newListener;
  @override
  Broadcast? get liveBroadcast;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SocketStateCopyWith<_$_SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}
