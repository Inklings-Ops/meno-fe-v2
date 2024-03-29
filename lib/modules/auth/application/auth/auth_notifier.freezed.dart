// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentials credentials});

  $UserCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$_Authenticated(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsCopyWith<$Res> get credentials {
    return $UserCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value));
    });
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.credentials);

  @override
  final UserCredentials credentials;

  @override
  String toString() {
    return 'AuthState.authenticated(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return authenticated(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return authenticated?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final UserCredentials credentials) =
      _$_Authenticated;

  UserCredentials get credentials;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$$_PartiallyUnauthenticatedCopyWith<$Res> {
  factory _$$_PartiallyUnauthenticatedCopyWith(
          _$_PartiallyUnauthenticated value,
          $Res Function(_$_PartiallyUnauthenticated) then) =
      __$$_PartiallyUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PartiallyUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_PartiallyUnauthenticated>
    implements _$$_PartiallyUnauthenticatedCopyWith<$Res> {
  __$$_PartiallyUnauthenticatedCopyWithImpl(_$_PartiallyUnauthenticated _value,
      $Res Function(_$_PartiallyUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PartiallyUnauthenticated implements _PartiallyUnauthenticated {
  const _$_PartiallyUnauthenticated();

  @override
  String toString() {
    return 'AuthState.partiallyUnauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartiallyUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return partiallyUnauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return partiallyUnauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (partiallyUnauthenticated != null) {
      return partiallyUnauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return partiallyUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return partiallyUnauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (partiallyUnauthenticated != null) {
      return partiallyUnauthenticated(this);
    }
    return orElse();
  }
}

abstract class _PartiallyUnauthenticated implements AuthState {
  const factory _PartiallyUnauthenticated() = _$_PartiallyUnauthenticated;
}

/// @nodoc
abstract class _$$_UnverifiedCopyWith<$Res> {
  factory _$$_UnverifiedCopyWith(
          _$_Unverified value, $Res Function(_$_Unverified) then) =
      __$$_UnverifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnverifiedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unverified>
    implements _$$_UnverifiedCopyWith<$Res> {
  __$$_UnverifiedCopyWithImpl(
      _$_Unverified _value, $Res Function(_$_Unverified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unverified implements _Unverified {
  const _$_Unverified();

  @override
  String toString() {
    return 'AuthState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unverified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return unverified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class _Unverified implements AuthState {
  const factory _Unverified() = _$_Unverified;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Verified>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) authenticated,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() partiallyUnauthenticated,
    required TResult Function() unverified,
    required TResult Function() verified,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? authenticated,
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? partiallyUnauthenticated,
    TResult? Function()? unverified,
    TResult? Function()? verified,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? authenticated,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? partiallyUnauthenticated,
    TResult Function()? unverified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PartiallyUnauthenticated value)
        partiallyUnauthenticated,
    required TResult Function(_Unverified value) unverified,
    required TResult Function(_Verified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PartiallyUnauthenticated value)?
        partiallyUnauthenticated,
    TResult? Function(_Unverified value)? unverified,
    TResult? Function(_Verified value)? verified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PartiallyUnauthenticated value)? partiallyUnauthenticated,
    TResult Function(_Unverified value)? unverified,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified() = _$_Verified;
}
