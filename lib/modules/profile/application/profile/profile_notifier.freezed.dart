// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile) authUserLoaded,
    required TResult Function(Profile profile) otherUserLoaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile)? authUserLoaded,
    TResult? Function(Profile profile)? otherUserLoaded,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile)? authUserLoaded,
    TResult Function(Profile profile)? otherUserLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(AuthUserProfileLoaded value) authUserLoaded,
    required TResult Function(OtherUserProfileLoaded value) otherUserLoaded,
    required TResult Function(_ProfileFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoading value)? loading,
    TResult? Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult? Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult? Function(_ProfileFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult Function(_ProfileFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProfileLoadingCopyWith<$Res> {
  factory _$$_ProfileLoadingCopyWith(
          _$_ProfileLoading value, $Res Function(_$_ProfileLoading) then) =
      __$$_ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileLoading>
    implements _$$_ProfileLoadingCopyWith<$Res> {
  __$$_ProfileLoadingCopyWithImpl(
      _$_ProfileLoading _value, $Res Function(_$_ProfileLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileLoading implements _ProfileLoading {
  const _$_ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile) authUserLoaded,
    required TResult Function(Profile profile) otherUserLoaded,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile)? authUserLoaded,
    TResult? Function(Profile profile)? otherUserLoaded,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile)? authUserLoaded,
    TResult Function(Profile profile)? otherUserLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(AuthUserProfileLoaded value) authUserLoaded,
    required TResult Function(OtherUserProfileLoaded value) otherUserLoaded,
    required TResult Function(_ProfileFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoading value)? loading,
    TResult? Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult? Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult? Function(_ProfileFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult Function(_ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoading implements ProfileState {
  const factory _ProfileLoading() = _$_ProfileLoading;
}

/// @nodoc
abstract class _$$AuthUserProfileLoadedCopyWith<$Res> {
  factory _$$AuthUserProfileLoadedCopyWith(_$AuthUserProfileLoaded value,
          $Res Function(_$AuthUserProfileLoaded) then) =
      __$$AuthUserProfileLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AuthUserProfileLoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$AuthUserProfileLoaded>
    implements _$$AuthUserProfileLoadedCopyWith<$Res> {
  __$$AuthUserProfileLoadedCopyWithImpl(_$AuthUserProfileLoaded _value,
      $Res Function(_$AuthUserProfileLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AuthUserProfileLoaded(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$AuthUserProfileLoaded implements AuthUserProfileLoaded {
  const _$AuthUserProfileLoaded(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.authUserLoaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserProfileLoaded &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserProfileLoadedCopyWith<_$AuthUserProfileLoaded> get copyWith =>
      __$$AuthUserProfileLoadedCopyWithImpl<_$AuthUserProfileLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile) authUserLoaded,
    required TResult Function(Profile profile) otherUserLoaded,
    required TResult Function() failed,
  }) {
    return authUserLoaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile)? authUserLoaded,
    TResult? Function(Profile profile)? otherUserLoaded,
    TResult? Function()? failed,
  }) {
    return authUserLoaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile)? authUserLoaded,
    TResult Function(Profile profile)? otherUserLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (authUserLoaded != null) {
      return authUserLoaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(AuthUserProfileLoaded value) authUserLoaded,
    required TResult Function(OtherUserProfileLoaded value) otherUserLoaded,
    required TResult Function(_ProfileFailed value) failed,
  }) {
    return authUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoading value)? loading,
    TResult? Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult? Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult? Function(_ProfileFailed value)? failed,
  }) {
    return authUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult Function(_ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (authUserLoaded != null) {
      return authUserLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthUserProfileLoaded implements ProfileState {
  const factory AuthUserProfileLoaded(final Profile profile) =
      _$AuthUserProfileLoaded;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$AuthUserProfileLoadedCopyWith<_$AuthUserProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherUserProfileLoadedCopyWith<$Res> {
  factory _$$OtherUserProfileLoadedCopyWith(_$OtherUserProfileLoaded value,
          $Res Function(_$OtherUserProfileLoaded) then) =
      __$$OtherUserProfileLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$OtherUserProfileLoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$OtherUserProfileLoaded>
    implements _$$OtherUserProfileLoadedCopyWith<$Res> {
  __$$OtherUserProfileLoadedCopyWithImpl(_$OtherUserProfileLoaded _value,
      $Res Function(_$OtherUserProfileLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$OtherUserProfileLoaded(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$OtherUserProfileLoaded implements OtherUserProfileLoaded {
  const _$OtherUserProfileLoaded(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.otherUserLoaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherUserProfileLoaded &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherUserProfileLoadedCopyWith<_$OtherUserProfileLoaded> get copyWith =>
      __$$OtherUserProfileLoadedCopyWithImpl<_$OtherUserProfileLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile) authUserLoaded,
    required TResult Function(Profile profile) otherUserLoaded,
    required TResult Function() failed,
  }) {
    return otherUserLoaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile)? authUserLoaded,
    TResult? Function(Profile profile)? otherUserLoaded,
    TResult? Function()? failed,
  }) {
    return otherUserLoaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile)? authUserLoaded,
    TResult Function(Profile profile)? otherUserLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (otherUserLoaded != null) {
      return otherUserLoaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(AuthUserProfileLoaded value) authUserLoaded,
    required TResult Function(OtherUserProfileLoaded value) otherUserLoaded,
    required TResult Function(_ProfileFailed value) failed,
  }) {
    return otherUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoading value)? loading,
    TResult? Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult? Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult? Function(_ProfileFailed value)? failed,
  }) {
    return otherUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult Function(_ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (otherUserLoaded != null) {
      return otherUserLoaded(this);
    }
    return orElse();
  }
}

abstract class OtherUserProfileLoaded implements ProfileState {
  const factory OtherUserProfileLoaded(final Profile profile) =
      _$OtherUserProfileLoaded;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$OtherUserProfileLoadedCopyWith<_$OtherUserProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileFailedCopyWith<$Res> {
  factory _$$_ProfileFailedCopyWith(
          _$_ProfileFailed value, $Res Function(_$_ProfileFailed) then) =
      __$$_ProfileFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileFailedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileFailed>
    implements _$$_ProfileFailedCopyWith<$Res> {
  __$$_ProfileFailedCopyWithImpl(
      _$_ProfileFailed _value, $Res Function(_$_ProfileFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileFailed implements _ProfileFailed {
  const _$_ProfileFailed();

  @override
  String toString() {
    return 'ProfileState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile) authUserLoaded,
    required TResult Function(Profile profile) otherUserLoaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile)? authUserLoaded,
    TResult? Function(Profile profile)? otherUserLoaded,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile)? authUserLoaded,
    TResult Function(Profile profile)? otherUserLoaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoading value) loading,
    required TResult Function(AuthUserProfileLoaded value) authUserLoaded,
    required TResult Function(OtherUserProfileLoaded value) otherUserLoaded,
    required TResult Function(_ProfileFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoading value)? loading,
    TResult? Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult? Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult? Function(_ProfileFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoading value)? loading,
    TResult Function(AuthUserProfileLoaded value)? authUserLoaded,
    TResult Function(OtherUserProfileLoaded value)? otherUserLoaded,
    TResult Function(_ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _ProfileFailed implements ProfileState {
  const factory _ProfileFailed() = _$_ProfileFailed;
}
