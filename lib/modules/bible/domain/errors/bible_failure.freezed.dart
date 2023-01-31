// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bible_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BibleFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BibleFailureMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BibleFailureMessage value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BibleFailureMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BibleFailureCopyWith<BibleFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleFailureCopyWith<$Res> {
  factory $BibleFailureCopyWith(
          BibleFailure value, $Res Function(BibleFailure) then) =
      _$BibleFailureCopyWithImpl<$Res, BibleFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$BibleFailureCopyWithImpl<$Res, $Val extends BibleFailure>
    implements $BibleFailureCopyWith<$Res> {
  _$BibleFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BibleFailureMessageCopyWith<$Res>
    implements $BibleFailureCopyWith<$Res> {
  factory _$$_BibleFailureMessageCopyWith(_$_BibleFailureMessage value,
          $Res Function(_$_BibleFailureMessage) then) =
      __$$_BibleFailureMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_BibleFailureMessageCopyWithImpl<$Res>
    extends _$BibleFailureCopyWithImpl<$Res, _$_BibleFailureMessage>
    implements _$$_BibleFailureMessageCopyWith<$Res> {
  __$$_BibleFailureMessageCopyWithImpl(_$_BibleFailureMessage _value,
      $Res Function(_$_BibleFailureMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BibleFailureMessage(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BibleFailureMessage implements _BibleFailureMessage {
  const _$_BibleFailureMessage(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'BibleFailure.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BibleFailureMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BibleFailureMessageCopyWith<_$_BibleFailureMessage> get copyWith =>
      __$$_BibleFailureMessageCopyWithImpl<_$_BibleFailureMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? message,
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
    required TResult Function(_BibleFailureMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BibleFailureMessage value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BibleFailureMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _BibleFailureMessage implements BibleFailure {
  const factory _BibleFailureMessage(final String? message) =
      _$_BibleFailureMessage;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BibleFailureMessageCopyWith<_$_BibleFailureMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
