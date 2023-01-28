// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_return_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginReturnState {
  IFullName? get fullName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  IEmail get email => throw _privateConstructorUsedError;
  IPassword get password => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginReturnStateCopyWith<LoginReturnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReturnStateCopyWith<$Res> {
  factory $LoginReturnStateCopyWith(
          LoginReturnState value, $Res Function(LoginReturnState) then) =
      _$LoginReturnStateCopyWithImpl<$Res, LoginReturnState>;
  @useResult
  $Res call(
      {IFullName? fullName,
      String? avatarUrl,
      IEmail email,
      IPassword password,
      bool showError,
      bool loading,
      Option<Either<AuthFailure, Unit>> option});
}

/// @nodoc
class _$LoginReturnStateCopyWithImpl<$Res, $Val extends LoginReturnState>
    implements $LoginReturnStateCopyWith<$Res> {
  _$LoginReturnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? email = null,
    Object? password = null,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as IPassword,
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
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginReturnStateCopyWith<$Res>
    implements $LoginReturnStateCopyWith<$Res> {
  factory _$$_LoginReturnStateCopyWith(
          _$_LoginReturnState value, $Res Function(_$_LoginReturnState) then) =
      __$$_LoginReturnStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IFullName? fullName,
      String? avatarUrl,
      IEmail email,
      IPassword password,
      bool showError,
      bool loading,
      Option<Either<AuthFailure, Unit>> option});
}

/// @nodoc
class __$$_LoginReturnStateCopyWithImpl<$Res>
    extends _$LoginReturnStateCopyWithImpl<$Res, _$_LoginReturnState>
    implements _$$_LoginReturnStateCopyWith<$Res> {
  __$$_LoginReturnStateCopyWithImpl(
      _$_LoginReturnState _value, $Res Function(_$_LoginReturnState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? email = null,
    Object? password = null,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_$_LoginReturnState(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as IPassword,
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
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LoginReturnState implements _LoginReturnState {
  const _$_LoginReturnState(
      {this.fullName,
      this.avatarUrl,
      required this.email,
      required this.password,
      required this.showError,
      required this.loading,
      required this.option});

  @override
  final IFullName? fullName;
  @override
  final String? avatarUrl;
  @override
  final IEmail email;
  @override
  final IPassword password;
  @override
  final bool showError;
  @override
  final bool loading;
  @override
  final Option<Either<AuthFailure, Unit>> option;

  @override
  String toString() {
    return 'LoginReturnState(fullName: $fullName, avatarUrl: $avatarUrl, email: $email, password: $password, showError: $showError, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginReturnState &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, avatarUrl, email,
      password, showError, loading, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginReturnStateCopyWith<_$_LoginReturnState> get copyWith =>
      __$$_LoginReturnStateCopyWithImpl<_$_LoginReturnState>(this, _$identity);
}

abstract class _LoginReturnState implements LoginReturnState {
  const factory _LoginReturnState(
          {final IFullName? fullName,
          final String? avatarUrl,
          required final IEmail email,
          required final IPassword password,
          required final bool showError,
          required final bool loading,
          required final Option<Either<AuthFailure, Unit>> option}) =
      _$_LoginReturnState;

  @override
  IFullName? get fullName;
  @override
  String? get avatarUrl;
  @override
  IEmail get email;
  @override
  IPassword get password;
  @override
  bool get showError;
  @override
  bool get loading;
  @override
  Option<Either<AuthFailure, Unit>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_LoginReturnStateCopyWith<_$_LoginReturnState> get copyWith =>
      throw _privateConstructorUsedError;
}
