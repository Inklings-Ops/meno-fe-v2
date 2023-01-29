// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFormState {
  IFullName get fullName => throw _privateConstructorUsedError;
  IBio? get bio => throw _privateConstructorUsedError;
  IAvatar? get avatar => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res, ProfileFormState>;
  @useResult
  $Res call(
      {IFullName fullName,
      IBio? bio,
      IAvatar? avatar,
      String? imageUrl,
      bool showError,
      bool loading,
      Option<Either<ProfileFailure, Unit>> option});
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res, $Val extends ProfileFormState>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? bio = freezed,
    Object? avatar = freezed,
    Object? imageUrl = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as IAvatar?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Option<Either<ProfileFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$$_ProfileFormStateCopyWith(
          _$_ProfileFormState value, $Res Function(_$_ProfileFormState) then) =
      __$$_ProfileFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IFullName fullName,
      IBio? bio,
      IAvatar? avatar,
      String? imageUrl,
      bool showError,
      bool loading,
      Option<Either<ProfileFailure, Unit>> option});
}

/// @nodoc
class __$$_ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res, _$_ProfileFormState>
    implements _$$_ProfileFormStateCopyWith<$Res> {
  __$$_ProfileFormStateCopyWithImpl(
      _$_ProfileFormState _value, $Res Function(_$_ProfileFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? bio = freezed,
    Object? avatar = freezed,
    Object? imageUrl = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_$_ProfileFormState(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as IAvatar?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileFormState implements _ProfileFormState {
  _$_ProfileFormState(
      {required this.fullName,
      required this.bio,
      required this.avatar,
      required this.imageUrl,
      required this.showError,
      required this.loading,
      required this.option});

  @override
  final IFullName fullName;
  @override
  final IBio? bio;
  @override
  final IAvatar? avatar;
  @override
  final String? imageUrl;
  @override
  final bool showError;
  @override
  final bool loading;
  @override
  final Option<Either<ProfileFailure, Unit>> option;

  @override
  String toString() {
    return 'ProfileFormState(fullName: $fullName, bio: $bio, avatar: $avatar, imageUrl: $imageUrl, showError: $showError, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFormState &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, bio, avatar, imageUrl, showError, loading, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormStateCopyWith<_$_ProfileFormState> get copyWith =>
      __$$_ProfileFormStateCopyWithImpl<_$_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  factory _ProfileFormState(
          {required final IFullName fullName,
          required final IBio? bio,
          required final IAvatar? avatar,
          required final String? imageUrl,
          required final bool showError,
          required final bool loading,
          required final Option<Either<ProfileFailure, Unit>> option}) =
      _$_ProfileFormState;

  @override
  IFullName get fullName;
  @override
  IBio? get bio;
  @override
  IAvatar? get avatar;
  @override
  String? get imageUrl;
  @override
  bool get showError;
  @override
  bool get loading;
  @override
  Option<Either<ProfileFailure, Unit>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormStateCopyWith<_$_ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
