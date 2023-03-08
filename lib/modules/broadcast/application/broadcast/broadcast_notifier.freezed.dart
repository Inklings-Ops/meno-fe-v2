// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BroadcastState {
  List<Broadcast?>? get currentUserBroadcasts =>
      throw _privateConstructorUsedError;
  Broadcast get broadcast => throw _privateConstructorUsedError;
  BroadcastStatus get status => throw _privateConstructorUsedError;
  bool get isAudioMute => throw _privateConstructorUsedError;
  User get authUser => throw _privateConstructorUsedError;
  String? get agoraToken => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, String>> get joinedOption =>
      throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, Broadcast>> get startedOption =>
      throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, Unit>> get leaveOption =>
      throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, Unit>> get deleteOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastStateCopyWith<BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastStateCopyWith<$Res> {
  factory $BroadcastStateCopyWith(
          BroadcastState value, $Res Function(BroadcastState) then) =
      _$BroadcastStateCopyWithImpl<$Res, BroadcastState>;
  @useResult
  $Res call(
      {List<Broadcast?>? currentUserBroadcasts,
      Broadcast broadcast,
      BroadcastStatus status,
      bool isAudioMute,
      User authUser,
      String? agoraToken,
      bool showError,
      bool loading,
      Option<Either<BroadcastFailure, String>> joinedOption,
      Option<Either<BroadcastFailure, Broadcast>> startedOption,
      Option<Either<BroadcastFailure, Unit>> leaveOption,
      Option<Either<BroadcastFailure, Unit>> deleteOption});

  $BroadcastCopyWith<$Res> get broadcast;
  $UserCopyWith<$Res> get authUser;
}

/// @nodoc
class _$BroadcastStateCopyWithImpl<$Res, $Val extends BroadcastState>
    implements $BroadcastStateCopyWith<$Res> {
  _$BroadcastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserBroadcasts = freezed,
    Object? broadcast = null,
    Object? status = null,
    Object? isAudioMute = null,
    Object? authUser = null,
    Object? agoraToken = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? joinedOption = null,
    Object? startedOption = null,
    Object? leaveOption = null,
    Object? deleteOption = null,
  }) {
    return _then(_value.copyWith(
      currentUserBroadcasts: freezed == currentUserBroadcasts
          ? _value.currentUserBroadcasts
          : currentUserBroadcasts // ignore: cast_nullable_to_non_nullable
              as List<Broadcast?>?,
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BroadcastStatus,
      isAudioMute: null == isAudioMute
          ? _value.isAudioMute
          : isAudioMute // ignore: cast_nullable_to_non_nullable
              as bool,
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as User,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedOption: null == joinedOption
          ? _value.joinedOption
          : joinedOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, String>>,
      startedOption: null == startedOption
          ? _value.startedOption
          : startedOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Broadcast>>,
      leaveOption: null == leaveOption
          ? _value.leaveOption
          : leaveOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Unit>>,
      deleteOption: null == deleteOption
          ? _value.deleteOption
          : deleteOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BroadcastCopyWith<$Res> get broadcast {
    return $BroadcastCopyWith<$Res>(_value.broadcast, (value) {
      return _then(_value.copyWith(broadcast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get authUser {
    return $UserCopyWith<$Res>(_value.authUser, (value) {
      return _then(_value.copyWith(authUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BroadcastStateCopyWith<$Res>
    implements $BroadcastStateCopyWith<$Res> {
  factory _$$_BroadcastStateCopyWith(
          _$_BroadcastState value, $Res Function(_$_BroadcastState) then) =
      __$$_BroadcastStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Broadcast?>? currentUserBroadcasts,
      Broadcast broadcast,
      BroadcastStatus status,
      bool isAudioMute,
      User authUser,
      String? agoraToken,
      bool showError,
      bool loading,
      Option<Either<BroadcastFailure, String>> joinedOption,
      Option<Either<BroadcastFailure, Broadcast>> startedOption,
      Option<Either<BroadcastFailure, Unit>> leaveOption,
      Option<Either<BroadcastFailure, Unit>> deleteOption});

  @override
  $BroadcastCopyWith<$Res> get broadcast;
  @override
  $UserCopyWith<$Res> get authUser;
}

/// @nodoc
class __$$_BroadcastStateCopyWithImpl<$Res>
    extends _$BroadcastStateCopyWithImpl<$Res, _$_BroadcastState>
    implements _$$_BroadcastStateCopyWith<$Res> {
  __$$_BroadcastStateCopyWithImpl(
      _$_BroadcastState _value, $Res Function(_$_BroadcastState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserBroadcasts = freezed,
    Object? broadcast = null,
    Object? status = null,
    Object? isAudioMute = null,
    Object? authUser = null,
    Object? agoraToken = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? joinedOption = null,
    Object? startedOption = null,
    Object? leaveOption = null,
    Object? deleteOption = null,
  }) {
    return _then(_$_BroadcastState(
      currentUserBroadcasts: freezed == currentUserBroadcasts
          ? _value._currentUserBroadcasts
          : currentUserBroadcasts // ignore: cast_nullable_to_non_nullable
              as List<Broadcast?>?,
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BroadcastStatus,
      isAudioMute: null == isAudioMute
          ? _value.isAudioMute
          : isAudioMute // ignore: cast_nullable_to_non_nullable
              as bool,
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as User,
      agoraToken: freezed == agoraToken
          ? _value.agoraToken
          : agoraToken // ignore: cast_nullable_to_non_nullable
              as String?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedOption: null == joinedOption
          ? _value.joinedOption
          : joinedOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, String>>,
      startedOption: null == startedOption
          ? _value.startedOption
          : startedOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Broadcast>>,
      leaveOption: null == leaveOption
          ? _value.leaveOption
          : leaveOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Unit>>,
      deleteOption: null == deleteOption
          ? _value.deleteOption
          : deleteOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_BroadcastState implements _BroadcastState {
  const _$_BroadcastState(
      {required final List<Broadcast?>? currentUserBroadcasts,
      required this.broadcast,
      required this.status,
      required this.isAudioMute,
      required this.authUser,
      this.agoraToken,
      required this.showError,
      required this.loading,
      required this.joinedOption,
      required this.startedOption,
      required this.leaveOption,
      required this.deleteOption})
      : _currentUserBroadcasts = currentUserBroadcasts;

  final List<Broadcast?>? _currentUserBroadcasts;
  @override
  List<Broadcast?>? get currentUserBroadcasts {
    final value = _currentUserBroadcasts;
    if (value == null) return null;
    if (_currentUserBroadcasts is EqualUnmodifiableListView)
      return _currentUserBroadcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Broadcast broadcast;
  @override
  final BroadcastStatus status;
  @override
  final bool isAudioMute;
  @override
  final User authUser;
  @override
  final String? agoraToken;
  @override
  final bool showError;
  @override
  final bool loading;
  @override
  final Option<Either<BroadcastFailure, String>> joinedOption;
  @override
  final Option<Either<BroadcastFailure, Broadcast>> startedOption;
  @override
  final Option<Either<BroadcastFailure, Unit>> leaveOption;
  @override
  final Option<Either<BroadcastFailure, Unit>> deleteOption;

  @override
  String toString() {
    return 'BroadcastState(currentUserBroadcasts: $currentUserBroadcasts, broadcast: $broadcast, status: $status, isAudioMute: $isAudioMute, authUser: $authUser, agoraToken: $agoraToken, showError: $showError, loading: $loading, joinedOption: $joinedOption, startedOption: $startedOption, leaveOption: $leaveOption, deleteOption: $deleteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastState &&
            const DeepCollectionEquality()
                .equals(other._currentUserBroadcasts, _currentUserBroadcasts) &&
            (identical(other.broadcast, broadcast) ||
                other.broadcast == broadcast) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAudioMute, isAudioMute) ||
                other.isAudioMute == isAudioMute) &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.agoraToken, agoraToken) ||
                other.agoraToken == agoraToken) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.joinedOption, joinedOption) ||
                other.joinedOption == joinedOption) &&
            (identical(other.startedOption, startedOption) ||
                other.startedOption == startedOption) &&
            (identical(other.leaveOption, leaveOption) ||
                other.leaveOption == leaveOption) &&
            (identical(other.deleteOption, deleteOption) ||
                other.deleteOption == deleteOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentUserBroadcasts),
      broadcast,
      status,
      isAudioMute,
      authUser,
      agoraToken,
      showError,
      loading,
      joinedOption,
      startedOption,
      leaveOption,
      deleteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastStateCopyWith<_$_BroadcastState> get copyWith =>
      __$$_BroadcastStateCopyWithImpl<_$_BroadcastState>(this, _$identity);
}

abstract class _BroadcastState implements BroadcastState {
  const factory _BroadcastState(
      {required final List<Broadcast?>? currentUserBroadcasts,
      required final Broadcast broadcast,
      required final BroadcastStatus status,
      required final bool isAudioMute,
      required final User authUser,
      final String? agoraToken,
      required final bool showError,
      required final bool loading,
      required final Option<Either<BroadcastFailure, String>> joinedOption,
      required final Option<Either<BroadcastFailure, Broadcast>> startedOption,
      required final Option<Either<BroadcastFailure, Unit>> leaveOption,
      required final Option<Either<BroadcastFailure, Unit>>
          deleteOption}) = _$_BroadcastState;

  @override
  List<Broadcast?>? get currentUserBroadcasts;
  @override
  Broadcast get broadcast;
  @override
  BroadcastStatus get status;
  @override
  bool get isAudioMute;
  @override
  User get authUser;
  @override
  String? get agoraToken;
  @override
  bool get showError;
  @override
  bool get loading;
  @override
  Option<Either<BroadcastFailure, String>> get joinedOption;
  @override
  Option<Either<BroadcastFailure, Broadcast>> get startedOption;
  @override
  Option<Either<BroadcastFailure, Unit>> get leaveOption;
  @override
  Option<Either<BroadcastFailure, Unit>> get deleteOption;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastStateCopyWith<_$_BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}
