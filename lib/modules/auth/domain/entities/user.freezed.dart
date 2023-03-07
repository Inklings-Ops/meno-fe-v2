// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  IFullName get fullName => throw _privateConstructorUsedError;
  IBio? get bio => throw _privateConstructorUsedError;
  IEmail get email => throw _privateConstructorUsedError;
  String? get emailAccountType => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  String? get imageId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get deleted => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      IFullName fullName,
      IBio? bio,
      IEmail email,
      String? emailAccountType,
      bool? verified,
      String? imageId,
      String? imageUrl,
      DateTime? deleted,
      Role role});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? email = null,
    Object? emailAccountType = freezed,
    Object? verified = freezed,
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? deleted = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      emailAccountType: freezed == emailAccountType
          ? _value.emailAccountType
          : emailAccountType // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      IFullName fullName,
      IBio? bio,
      IEmail email,
      String? emailAccountType,
      bool? verified,
      String? imageId,
      String? imageUrl,
      DateTime? deleted,
      Role role});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? email = null,
    Object? emailAccountType = freezed,
    Object? verified = freezed,
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? deleted = freezed,
    Object? role = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as IEmail,
      emailAccountType: freezed == emailAccountType
          ? _value.emailAccountType
          : emailAccountType // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.fullName,
      this.bio,
      required this.email,
      this.emailAccountType,
      this.verified,
      this.imageId,
      this.imageUrl,
      this.deleted,
      required this.role});

  @override
  final String id;
  @override
  final IFullName fullName;
  @override
  final IBio? bio;
  @override
  final IEmail email;
  @override
  final String? emailAccountType;
  @override
  final bool? verified;
  @override
  final String? imageId;
  @override
  final String? imageUrl;
  @override
  final DateTime? deleted;
  @override
  final Role role;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, bio: $bio, email: $email, emailAccountType: $emailAccountType, verified: $verified, imageId: $imageId, imageUrl: $imageUrl, deleted: $deleted, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailAccountType, emailAccountType) ||
                other.emailAccountType == emailAccountType) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, bio, email,
      emailAccountType, verified, imageId, imageUrl, deleted, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final IFullName fullName,
      final IBio? bio,
      required final IEmail email,
      final String? emailAccountType,
      final bool? verified,
      final String? imageId,
      final String? imageUrl,
      final DateTime? deleted,
      required final Role role}) = _$_User;

  @override
  String get id;
  @override
  IFullName get fullName;
  @override
  IBio? get bio;
  @override
  IEmail get email;
  @override
  String? get emailAccountType;
  @override
  bool? get verified;
  @override
  String? get imageId;
  @override
  String? get imageUrl;
  @override
  DateTime? get deleted;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
