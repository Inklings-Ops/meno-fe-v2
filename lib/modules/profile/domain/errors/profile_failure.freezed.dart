// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? message,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileFailureMessage value) message,
    required TResult Function(_ProfileServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileFailureMessage value)? message,
    TResult? Function(_ProfileServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileFailureMessage value)? message,
    TResult Function(_ProfileServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res, ProfileFailure>;
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res, $Val extends ProfileFailure>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProfileFailureMessageCopyWith<$Res> {
  factory _$$_ProfileFailureMessageCopyWith(_$_ProfileFailureMessage value,
          $Res Function(_$_ProfileFailureMessage) then) =
      __$$_ProfileFailureMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ProfileFailureMessageCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_ProfileFailureMessage>
    implements _$$_ProfileFailureMessageCopyWith<$Res> {
  __$$_ProfileFailureMessageCopyWithImpl(_$_ProfileFailureMessage _value,
      $Res Function(_$_ProfileFailureMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ProfileFailureMessage(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileFailureMessage implements _ProfileFailureMessage {
  const _$_ProfileFailureMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileFailure.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFailureMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFailureMessageCopyWith<_$_ProfileFailureMessage> get copyWith =>
      __$$_ProfileFailureMessageCopyWithImpl<_$_ProfileFailureMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function() serverError,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? message,
    TResult? Function()? serverError,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileFailureMessage value) message,
    required TResult Function(_ProfileServerError value) serverError,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileFailureMessage value)? message,
    TResult? Function(_ProfileServerError value)? serverError,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileFailureMessage value)? message,
    TResult Function(_ProfileServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _ProfileFailureMessage implements ProfileFailure {
  const factory _ProfileFailureMessage(final String message) =
      _$_ProfileFailureMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_ProfileFailureMessageCopyWith<_$_ProfileFailureMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileServerErrorCopyWith<$Res> {
  factory _$$_ProfileServerErrorCopyWith(_$_ProfileServerError value,
          $Res Function(_$_ProfileServerError) then) =
      __$$_ProfileServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileServerErrorCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_ProfileServerError>
    implements _$$_ProfileServerErrorCopyWith<$Res> {
  __$$_ProfileServerErrorCopyWithImpl(
      _$_ProfileServerError _value, $Res Function(_$_ProfileServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileServerError implements _ProfileServerError {
  const _$_ProfileServerError();

  @override
  String toString() {
    return 'ProfileFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) message,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? message,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? message,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileFailureMessage value) message,
    required TResult Function(_ProfileServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileFailureMessage value)? message,
    TResult? Function(_ProfileServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileFailureMessage value)? message,
    TResult Function(_ProfileServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ProfileServerError implements ProfileFailure {
  const factory _ProfileServerError() = _$_ProfileServerError;
}
