// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerificationState {
  IEmail get email => throw _privateConstructorUsedError;
  IOtp get otp => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, bool>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
  @useResult
  $Res call(
      {IEmail email,
      IOtp otp,
      bool showError,
      bool loading,
      Option<Either<AuthFailure, bool>> option});
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as IOtp,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationStateCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$$_VerificationStateCopyWith(_$_VerificationState value,
          $Res Function(_$_VerificationState) then) =
      __$$_VerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IEmail email,
      IOtp otp,
      bool showError,
      bool loading,
      Option<Either<AuthFailure, bool>> option});
}

/// @nodoc
class __$$_VerificationStateCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$_VerificationState>
    implements _$$_VerificationStateCopyWith<$Res> {
  __$$_VerificationStateCopyWithImpl(
      _$_VerificationState _value, $Res Function(_$_VerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_$_VerificationState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as IOtp,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc

class _$_VerificationState implements _VerificationState {
  const _$_VerificationState(
      {required this.email,
      required this.otp,
      required this.showError,
      required this.loading,
      required this.option});

  @override
  final IEmail email;
  @override
  final IOtp otp;
  @override
  final bool showError;
  @override
  final bool loading;
  @override
  final Option<Either<AuthFailure, bool>> option;

  @override
  String toString() {
    return 'VerificationState(email: $email, otp: $otp, showError: $showError, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, otp, showError, loading, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationStateCopyWith<_$_VerificationState> get copyWith =>
      __$$_VerificationStateCopyWithImpl<_$_VerificationState>(
          this, _$identity);
}

abstract class _VerificationState implements VerificationState {
  const factory _VerificationState(
          {required final IEmail email,
          required final IOtp otp,
          required final bool showError,
          required final bool loading,
          required final Option<Either<AuthFailure, bool>> option}) =
      _$_VerificationState;

  @override
  IEmail get email;
  @override
  IOtp get otp;
  @override
  bool get showError;
  @override
  bool get loading;
  @override
  Option<Either<AuthFailure, bool>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationStateCopyWith<_$_VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
